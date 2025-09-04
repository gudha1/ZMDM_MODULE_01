CLASS zcl_mdm_module_Customer_bapi DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
    CLASS-METHODS :
      CreateCustomer
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
      RETURNING VALUE(StatusRetun) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_CUSTOMER_BAPI IMPLEMENTATION.


 METHOD CreateCustomer.


SELECT SINGLE * FROM ZGENERALDATACUSTOMER_CDS WITH PRIVILEGED ACCESS as a
WHERE Taskid = @taxkid INTO @DATA(GENRALDATA).

SELECT * FROM ZPAYMENTTRANS_CUS_CDS WITH PRIVILEGED ACCESS as a
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
                           businesspartnercategory          = businesspartnercategory
                           %control-businesspartnercategory = if_abap_behv=>mk-on
                           BusinessPartnerGrouping          = GENRALDATA-Grouping
                           %control-BusinessPartnerGrouping = if_abap_behv=>mk-on
                           OrganizationBPName1              = GENRALDATA-Name
                           %control-OrganizationBPName1     = if_abap_behv=>mk-on
                           SearchTerm1                      = genraldata-Search1
                           %control-SearchTerm1             = if_abap_behv=>mk-on
                           SearchTerm2                      = genraldata-Search2
                           %control-SearchTerm2             = if_abap_behv=>mk-on
                           Language                         = 'E'
                           %control-Language                = if_abap_behv=>mk-on
                           FormOfAddress                    = genraldata-Title
                           %control-FormOfAddress           = if_abap_behv=>mk-on
                           FormOfAddressPerson              = genraldata-Title
                           %control-FormOfAddressPerson     = if_abap_behv=>mk-on
                           FormOfAddressGroup               = genraldata-Title
                           %control-FormOfAddressGroup      = if_abap_behv=>mk-on
                           FormOfAddressOrganization        = genraldata-Title
                           %control-FormOfAddressOrganization = if_abap_behv=>mk-on
                           GenderCodeName                     = gendor
                           %control-GenderCodeName            = if_abap_behv=>mk-on
                           CorrespondenceLanguage             = 'E'
                          %control-CorrespondenceLanguage     = if_abap_behv=>mk-on
                          FirstName                           = genraldata-Firstname
                          %control-FirstName                  = if_abap_behv=>mk-on
                          OrganizationBPName2                 = GENRALDATA-Addname
                          %control-OrganizationBPName2        = if_abap_behv=>mk-on
                           AdditionalName                     = GENRALDATA-Addname
                           %control-AdditionalName            = if_abap_behv=>mk-on
                           lastname                           = genraldata-Lastname "genraldata-Lastname
                           %control-lastname                  = if_abap_behv=>mk-on
                           GroupBusinessPartnerName1          = genraldata-Name1
                           %control-GroupBusinessPartnerName1 = if_abap_behv=>mk-on
                          GroupBusinessPartnerName2           = genraldata-Name2
                          %control-GroupBusinessPartnerName2  = if_abap_behv=>mk-on
                          BusinessPartnerIDByExtSystem        = taxkid
                          %control-BusinessPartnerIDByExtSystem = if_abap_behv=>mk-on

*                          BusinessPartnerUUID,
*                          FullName
*                          BusinessPartnerForEdit,
*                          BusinessPartnerGrouping,
*                          BusinessPartnerCategory,
*                          FormOfAddress,
*                          FormOfAddressPerson,
*                          BusinessPartnerBirthName,
*                          MiddleName,
*                          AcademicTitle,
*                          AcademicTitle2,
*                          BusinessPartnerSupplementName,
*                          LastNamePrefix,
*                          LastNameSecondPrefix,
*                          PersonFullName,
*                          BusinessPartnerNicknameLabel,
*                          Initials,
*                          BirthDate,
*                          BusinessPartnerBirthplaceName,
*                          BusinessPartnerBirthDateStatus,
*                          BusinessPartnerDeathDate,
*                          BusinessPartnerOccupation,
*                          BusPartNationality,
*                          BusPartMaritalStatus,
*                          IsMale,
*                          IsFemale,
*                          IsSexUnknown,
*                          ,
*                          AdditionalName,
*                          BusinessPartnerIDByExtSystem,
*                          NonResidentCompanyOriginCntry,
*                          NaturalPersonEmployerName,
*                          BusinessPartnerSalutation,
*                          ,

*                          OrganizationBPName2,
*                          OrganizationBPName3,
*                          OrganizationBPName4,
*                          LegalForm,
*                          LegalEntityOfOrganization,
*                          OrganizationFoundationDate,
*                          OrganizationLiquidationDate,
*                          InternationalLocationNumber1,
*                          InternationalLocationNumber2,
*                          InternationalLocationNumber3,
*                          ETag,
*                          ,
*                          GroupBusinessPartnerName1,
*                          GroupBusinessPartnerName2,
*                          BusinessPartnerGroupType,
*                          AuthorizationGroup,
*                          BusinessPartnerType                                as BusinessPartnerKind,
*                          BusinessPartnerPrintFormat,
*                          BusinessPartnerDataOriginType,
*                          BusinessPartnerIsBlocked,
*                          IsMarkedForArchiving,
*                          BusinessPartnerIsNotReleased,
*                          ContactPermission,
*                          IsBusinessPurposeCompleted,
*                          SearchTerm1,
*                          SearchTerm2,
*                          BPFirstNameSearchHelp,
*                          BPLastNameSearchHelp,
*                          NameFormat,
*                          NameCountry,
*                          BusPartPersonDataIsHidden,
*                          BusPartOrgDataIsHidden,
*                          BusPartGroupDataIsHidden,
*                          BusPartAddrLanguageIsHidden,
*                          %control-lastname = if_abap_behv=>mk-on

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
                                                country                    = genraldata-Countryreg
                                                cityname                   = genraldata-city
                                                StreetName                 = genraldata-streethousenumber
                                                StreetPrefixName           = genraldata-Street2
                                                AdditionalStreetPrefixName = genraldata-street3
                                                StreetSuffixName           = genraldata-street4
                                                AdditionalStreetSuffixName = genraldata-street5
                                                HomeCityName               = genraldata-differentcity
                                                PostalCode                 = genraldata-Postalcodecity
                                                Region                     = genraldata-Region
                                                HouseNumber                = genraldata-housenumber
                                                District                   = genraldata-district
                                                CorrespondenceLanguage     = 'E'
                                                AddressTimeZone            = genraldata-ztimezone
                                                TransportZone              = genraldata-transportationzone
                                                TaxJurisdiction            = genraldata-taxjuris
                                                CompanyPostalCode          = genraldata-Companycodepostal
                                                CareOfName                 = genraldata-co
                                                POBox                      = genraldata-Pobox
                                                Building                   = genraldata-buildingcode
                                                Floor                      = genraldata-floor
                                                RoomNumber                 = genraldata-room
                                                POBoxPostalCode            = genraldata-Companycodepostal

*                                                DeliveryServiceTypeCode
*                                                DeliveryServiceNumber,
*                                                POBox,
*                                                POBoxIsWithoutNumber,
*                                                POBoxPostalCode,
*                                                POBoxLobbyName,
*                                                POBoxDeviatingCityName,
*                                                POBoxDeviatingRegion,
*                                                POBoxDeviatingCountry,
*                                                PrfrdCommMediumType,
*                                                AddressLine1Text,
*                                                FormattedAddress,
*                                                CompleteAddress,
*                                                BPAddressIsProtected,
*                                                StandardUsage,
*                                                AddressNonDeliverableReason,
*                                                PostBoxNonDeliverableReason,
*                                                BPCountyText,
*                                                AddressTimeZone =
*                                                AddressLine1Text =
*                                                FormattedAddress =
*                                                CompleteAddress =
*                                                DistrictName =

                                                )
                                                              )
                                            ) )
       CREATE BY \_businesspartnerrole
        FIELDS ( businesspartnerrole validfrom ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_ROL'
                                                businesspartnerrole = 'FLCU01'
                                                validfrom           = sy-datum
                                                )
                                                              )
                                            ) )
       CREATE BY \_businesspartnertaxnumber
        SET FIELDS WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
                                                (
                                                %cid = 'bp1_TAXNO'
                                                BPTaxType   = genraldata-Category
                                                BPTaxNumber = genraldata-Taxnumberlong
                                                )
                                                              )
                                            ) )
      CREATE BY \_businesspartneridentification
FIELDS ( BPIdentificationType BPIdentificationNumber ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #(
(
                                                %cid                   = 'bp1_TNERIFI'
                                                BPIdentificationType   = 'PAN'
                                                BPIdentificationNumber = genraldata-Pan

)
)
) )
*CREATE BY \_businesspartnerindustry
*        SET FIELDS WITH VALUE #( (
*                                             %cid_ref = 'bp1'
*                                            %target = VALUE #(
*                                                (
*                                                %cid = 'bp1_INDSU'
*                                                IndustrySector = '0000000020'
*                                                IndustrySystemType = '0001'
*                                                IsStandardIndustry = 'X'
*                                                )
*                                                              )
*                                            ) )
  CREATE BY \_businesspartnerbank
       FIELDS ( BankNumber BankCountryKey BankAccountHolderName BankAccountName BankAccount
       BankAccountReferenceText BankControlKey ) WITH VALUE #( (
                                             %cid_ref = 'bp1'
                                            %target = VALUE #( FOR any IN BANKDETAILS  INDEX INTO i  (  %cid   = |bp1_BANK_{ i }_001|
*                                                (
*                                                %cid = 'bp1_BANK'
                                                BankNumber               = any-Bankkey
                                                BankCountryKey           = any-Cr
                                                BankAccountHolderName    = any-Accountholder
                                                BankAccountName          = any-Accountname
                                                BankAccount              =  any-Bankaccount
                                                BankAccountReferenceText = any-Referencedetails
                                                BankControlKey           = any-Controlkey


                                                ) )
                                            ) )
*        SET FIELDS WITH VALUE #( (
*                                             %cid_ref = 'bp1'
*                                            %target = VALUE #(
*                                                (
*                                                %cid = 'bp1_BANK'
**                                                BankIdentification = BANKDETAILS-Id
**                                                BankCountryKey = BANKDETAILS-Cr
*                                                BankNumber = BANKDETAILS-Bankkey
*                                                SWIFTCode = BANKDETAILS-Bankkey
**                                                BankControlKey = bankdetails-Controlkey
**                                                BankAccountName = BANKDETAILS-Bankaccountalias
**                                                IBAN = bankdetails-Iban
**                                                BankAccountReferenceText = bankdetails-Referencedetails
**                                                BankAccountHolderName = bankdetails-Accountholder
*
**      BankIdnForEditValue,
**      BankCountryKey,
**      BankName,
**      BankNumber,
**      SWIFTCode,
**      BankControlKey,
**      BankAccountHolderName,
**      BankValidityStartDate,
**      BankValidityEndDate,
**      IBAN,
**      IBANValidityStartDate,
**      BankAccount,
**      BankAccountReferenceText,
**      CollectionAuthInd,
**      BusinessPartnerExternalBankID,
**      BPBankDetailsChangeDate,
**      BPBankDetailsChangeTargetID,
**      BPBankIsProtected,
**      CityName,
**      AuthorizationGroup,
*                                                )
*                                                              )
*                                            ) )
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
                                                mobilephonecountry = genraldata-Countryregion

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
*    CREATE BY \_bpaddindependentwebsite
*        FIELDS ( websiteurl ) WITH VALUE #( (
*                                             %cid_ref = 'bp1'
*                                            %target = VALUE #(
*                                                (
*                                                %cid = 'bp1_WBSITE'
*                                                websiteurl = 'www.sap.com'
*                                                )
*                                                              )
*                                            ) )
*     CREATE BY \_bpaddindependentfax
*        FIELDS ( faxextensionnumber faxnumbercountry ) WITH VALUE #( (
*                                             %cid_ref = 'bp1'
*                                            %target = VALUE #(
*                                                (
*                                                %cid = 'bp1_FAX'
*                                                faxextensionnumber = '444666'
*                                                faxnumbercountry   = 'DE'
*                                                )
*                                                              )
*                                            ) )
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
INNER JOIN I_Customer WITH PRIVILEGED ACCESS as b ON     ( b~Customer = a~BusinessPartner )
WHERE BusinessPartnerIDByExtSystem = @taxkid INTO @DATA(VENDORDETAIL).

IF VENDORDETAIL-A-BusinessPartner <> '' .

  DATA(VEN2) = zcl_mdm_module_customer_api=>GETDATA( customer = VENDORDETAIL-A-BusinessPartner taxkid = taxkid typ = 'COM' ).
  data(VEN2sal) = zcl_mdm_module_customer_api=>GETDATA( customer = VENDORDETAIL-A-BusinessPartner taxkid = taxkid typ = 'SALES' ).

ENDIF.
 IF  VEN2  IS INITIAL AND VEN2sal IS INITIAL .
  StatusRetun = VENDORDETAIL-A-BusinessPartner.

 ELSEIF VEN2  IS NOT INITIAL AND VEN2sal  IS NOT INITIAL .

  StatusRetun = VENDORDETAIL-A-BusinessPartner && ' '  && 'Error Comapny Code Data' && ' ' && VEN2 && ' ' && 'Error Sales Data' && VEN2sal.

 ELSEIF VEN2  IS INITIAL AND VEN2sal  IS NOT INITIAL .

  StatusRetun = VENDORDETAIL-A-BusinessPartner && ' ' && 'Error Sales Data' && ' ' && VEN2sal.

 ELSEIF VEN2  IS NOT INITIAL AND VEN2sal  IS INITIAL .

  StatusRetun = VENDORDETAIL-A-BusinessPartner && ' '  && 'Error Comapny Code Data' && ' ' && VEN2.

 ENDIF.
*StatusRetun = VENDORDETAIL-BusinessPartn

ENDIF.
 ENDMETHOD.


 METHOD if_oo_adt_classrun~main.
DATA(REU) =  CreateCustomer( taxkid = '01000106' ).
ENDMETHOD.
ENDCLASS.
