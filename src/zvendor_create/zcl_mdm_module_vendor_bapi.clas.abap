CLASS zcl_mdm_module_vendor_bapi DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
    CLASS-METHODS :
      CreateVendo
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
      RETURNING VALUE(StatusRetun) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_VENDOR_BAPI IMPLEMENTATION.


 METHOD CreateVendo.


SELECT SINGLE * FROM ZGENERALDATA_CDS WITH PRIVILEGED ACCESS as a
WHERE Taskid = @taxkid INTO @DATA(GENRALDATA).

SELECT * FROM ZMDM_VEN_PAYMENTRANS_CDS WITH PRIVILEGED ACCESS as a
WHERE Taskid = @taxkid INTO TABLE @DATA(BANKDETAILS).


DATA businesspartnercategory TYPE STRING.
DATA gendor TYPE STRING.
IF genraldata-Title = '0001' OR  genraldata-Title = '0002'.

if  genraldata-Title = '0002'.
gendor = 2.
else.
gendor = 1.
ENDIF.
businesspartnercategory = 1.
ELSEIF genraldata-Title = '0003'.
businesspartnercategory = 2.
ELSEIF genraldata-Title = '0004'.
businesspartnercategory = 3.
ENDIF.
DATA create_partner TYPE TABLE FOR CREATE i_businesspartnertp_3.
create_partner = VALUE #( (
                          %cid = 'bp1'
                           businesspartnercategory = businesspartnercategory
                           %control-businesspartnercategory = if_abap_behv=>mk-on
                           BusinessPartnerGrouping = GENRALDATA-Grouping
                           %control-BusinessPartnerGrouping = if_abap_behv=>mk-on
                           OrganizationBPName1     = GENRALDATA-Name
                           %control-OrganizationBPName1 = if_abap_behv=>mk-on
                           SearchTerm1   = genraldata-Search1
                           %control-SearchTerm1 = if_abap_behv=>mk-on
                           SearchTerm2   =  genraldata-Search2
                           %control-SearchTerm2 = if_abap_behv=>mk-on
                           Language = 'E'
                           %control-Language = if_abap_behv=>mk-on
                           FormOfAddress      = genraldata-Title
                           %control-FormOfAddress = if_abap_behv=>mk-on


                           FormOfAddressPerson = genraldata-Title
                           %control-FormOfAddressPerson = if_abap_behv=>mk-on
                           FormOfAddressGroup  = genraldata-Title
                           %control-FormOfAddressGroup = if_abap_behv=>mk-on
                           FormOfAddressOrganization = genraldata-Title
                           %control-FormOfAddressOrganization = if_abap_behv=>mk-on
                           GenderCodeName   = gendor
                           %control-GenderCodeName = if_abap_behv=>mk-on

                          CorrespondenceLanguage   =   'E'
                          %control-CorrespondenceLanguage = if_abap_behv=>mk-on
                          FirstName    = genraldata-Firstname
                          %control-FirstName = if_abap_behv=>mk-on
                          OrganizationBPName2   = GENRALDATA-Addname
                          %control-OrganizationBPName2 = if_abap_behv=>mk-on
                           AdditionalName = GENRALDATA-Addname
                           %control-AdditionalName = if_abap_behv=>mk-on
                           lastname                = genraldata-Lastname "genraldata-Lastname
                           %control-lastname       = if_abap_behv=>mk-on
                           GroupBusinessPartnerName1    = genraldata-Name1
                           %control-GroupBusinessPartnerName1       = if_abap_behv=>mk-on
                          GroupBusinessPartnerName2    = genraldata-Name2
                          %control-GroupBusinessPartnerName2       = if_abap_behv=>mk-on
                          BusinessPartnerIDByExtSystem = taxkid
                          %control-BusinessPartnerIDByExtSystem       = if_abap_behv=>mk-on

                            ) ).
MODIFY ENTITIES OF i_businesspartnertp_3
    ENTITY businesspartner
        CREATE FROM create_partner
CREATE BY \_businesspartneraddress
        FIELDS ( country cityname StreetPrefixName StreetName PostalCode Region CorrespondenceLanguage HouseNumber District
      AddressTimeZone  TransportZone    TaxJurisdiction  CompanyPostalCode CareOfName HomeCityName AdditionalStreetSuffixName
      StreetSuffixName AdditionalStreetPrefixName POBox Building Floor RoomNumber
      POBoxPostalCode ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_1'
                                                country = genraldata-countryreg1

                                                cityname = genraldata-city
                                                StreetName = genraldata-streethousenumber
                                                StreetPrefixName = genraldata-Street2
                                                AdditionalStreetPrefixName = genraldata-street3
                                                StreetSuffixName    = genraldata-street4
                                                AdditionalStreetSuffixName = genraldata-street5
                                                HomeCityName  = genraldata-differentcity
                                                PostalCode = genraldata-Postalcode
                                                Region                = genraldata-Region
                                                HouseNumber            = genraldata-housenumber
                                                District               = genraldata-district
                                                CorrespondenceLanguage = 'E'
                                                AddressTimeZone   = genraldata-ztimezone
                                                TransportZone     = genraldata-transportationzone
                                                TaxJurisdiction   = genraldata-taxjuris
                                                CompanyPostalCode = genraldata-Companycodepostal
                                                CareOfName  = genraldata-co
                                                POBox  = genraldata-Pobox
                                                Building = genraldata-buildingcode
                                                Floor = genraldata-floor
                                                RoomNumber = genraldata-room
                                                POBoxPostalCode = genraldata-Postal1

                                                )
                                                              )
                                            ) )
CREATE BY \_businesspartnerrole
        FIELDS ( businesspartnerrole validfrom  ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_ROL'
                                                businesspartnerrole = 'FLVN01'
                                                validfrom = sy-datum
*                                                ValidTo = '19991231'
                                                )
                                                              )
                                            ) )
       CREATE BY \_businesspartnertaxnumber
        SET FIELDS WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_TAXNO'
                                                BPTaxType = genraldata-Category
                                                BPTaxNumber = genraldata-Taxnumberlong
                                                )
                                                              )
                                            ) )
      CREATE BY \_businesspartneridentification
FIELDS ( BPIdentificationType BPIdentificationNumber ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
(
                                                %cid = 'bp1_TNERIFI'
                                                BPIdentificationType = 'PAN'
                                                BPIdentificationNumber = genraldata-Pan

)
)
) )
  CREATE BY \_businesspartnerbank
       FIELDS ( BankNumber BankCountryKey BankAccountHolderName BankAccountName BankAccount
       BankAccountReferenceText BankControlKey ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #( FOR any IN BANKDETAILS  INDEX INTO i  (  %cid   = |bp1_BANK_{ i }_001|
*                                                (
*                                                %cid = 'bp1_BANK'
                                                BankNumber = any-Bankkey
                                                BankCountryKey = any-Cr
                                                BankAccountHolderName = any-Accountholder
                                                BankAccountName   = any-Accountname
                                                BankAccount   =  any-Bankaccount
                                                BankAccountReferenceText = any-Referencedetails
                                                BankControlKey   = any-Controlkey
                                                ) )
                                            ) )
   CREATE BY \_bpaddrindependentphone
        FIELDS ( phonenumber isdefaultphonenumber ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_PHON'
                                                phonenumber          = genraldata-Addressmobilephone
                                                isdefaultphonenumber = 'X'
                                                )
                                                              )
                                            ) )
 CREATE BY \_bpaddrindependentmobile
        FIELDS ( mobilephonenumber mobilephonecountry ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_MOBILE'
                                                mobilephonenumber = genraldata-Mobilephone
                                                mobilephonecountry = genraldata-Country

                                                )
                                                              )
                                            ) )
     CREATE BY \_bpaddrindependentemail
        FIELDS ( emailaddress isdefaultemailaddress ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_MAIL'
                                                emailaddress = genraldata-Email
                                                isdefaultemailaddress = 'X'
                                                )
                                                              )
                                            ) )
   MAPPED DATA(mapped)
    REPORTED DATA(reported)
    FAILED DATA(failed).
COMMIT ENTITIES BEGIN
 RESPONSE OF i_businesspartnertp_3
     FAILED DATA(failed_commit)
     REPORTED DATA(reported_commit).

DATA VENDOR TYPE STRING.
DATA ERROR TYPE STRING.
 If failed_commit  is INITIAL  .

 loop at  mapped-businesspartner ASSIGNING FIELD-SYMBOL(<fs1>)    .
 VENDOR   = <fs1>-BusinessPartner   .
 endloop .

 ELSE.
  ERROR = 'E'.
IF reported-businesspartner IS NOT INITIAL .
  VENDOR = reported-businesspartner[ 1 ]-%msg->if_message~get_text( ).
ENDIF.
IF reported_commit-businesspartner IS NOT INITIAL .
   VENDOR = reported_commit-businesspartner[ 1 ]-%msg->if_message~get_text( ).
 ENDIF.
 endif .
StatusRetun = ERROR && VENDOR.
COMMIT ENTITIES END .

IF ERROR <> 'E' .
CLEAR:StatusRetun.
SELECT SINGLE * FROM I_BusinessPartner WITH PRIVILEGED ACCESS as a
INNER JOIN I_Supplier WITH PRIVILEGED ACCESS as b ON    ( b~Supplier = a~BusinessPartner )
WHERE BusinessPartnerIDByExtSystem = @taxkid INTO @DATA(VENDORDETAIL).

IF VENDORDETAIL-a-BusinessPartner <> ''.

 DATA(comVEN2) = zcl_mdm_module_vendor_api=>GETDATA( VENDOR = VENDORDETAIL-a-BusinessPartner taxkid = taxkid typ = 'COM' ).
 daTA(purVEN2) = zcl_mdm_module_vendor_api=>GETDATA( VENDOR = VENDORDETAIL-a-BusinessPartner taxkid = taxkid typ = 'PUR' ).

ENDIF.
*StatusRetun = VENDORDETAIL-a-BusinessPartner && ' '  && 'Comapny Code Data' && comVEN2 && ' ' && 'Purching Data' && purVEN2.

 IF  comVEN2  IS INITIAL AND purVEN2 IS INITIAL .
  StatusRetun = VENDORDETAIL-A-BusinessPartner.

 ELSEIF comVEN2  IS NOT INITIAL AND purVEN2  IS NOT INITIAL .

  StatusRetun = VENDORDETAIL-A-BusinessPartner && ' '  && 'Error Comapny Code Data' && ' ' && comVEN2 && ' ' && 'Error Purchase Data' && purVEN2.

 ELSEIF comVEN2  IS INITIAL AND purVEN2  IS NOT INITIAL .

  StatusRetun = VENDORDETAIL-A-BusinessPartner && ' ' && 'Error Purchase Data' && ' ' && purVEN2.

 ELSEIF comVEN2  IS NOT INITIAL AND purVEN2  IS INITIAL .

  StatusRetun = VENDORDETAIL-A-BusinessPartner && ' '  && 'Error Comapny Code Data' && ' ' && comVEN2.

 ENDIF.

ENDIF.
 ENDMETHOD.


 METHOD if_oo_adt_classrun~main.
DATA(REU) =  CreateVendo( taxkid = '01000106' ).
ENDMETHOD.
ENDCLASS.
