CLASS zcl_mdm_module_vendor DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES : BEGIN OF GeneralData,
              Purchaseorg                TYPE string,
              CompanyCode                TYPE string,
              taskid                    TYPE string,
              businesspartner           TYPE string,
              createbp                  TYPE string,
              grouping                  TYPE string,
              title                     TYPE string,
              name                      TYPE string,
              name1_2                   TYPE string,
              name1                     TYPE string,
              name2                     TYPE string,
              firstname                 TYPE string,
              lastname                  TYPE string,
              Language                  TYPE string,
              search1                   TYPE string,
              search2                   TYPE string,
              vip                       TYPE string,
              UndesirableCustomer       TYPE string,
              Reason                    TYPE string,
              Region1                    TYPE string,
              specialcomment            TYPE string,
              street1                   TYPE string,
              street2                   TYPE string,
              postal1                   TYPE string,
              postal2                   TYPE string,
              country                   TYPE string,
              Region                    TYPE string,
              pobox                     TYPE string,
              postalcode                TYPE string,
              companycodepostal         TYPE string,
              Telephone                 TYPE string,
              mobilephone               TYPE string,
              Fax                       TYPE string,
              email                     TYPE string,
              Comments                  TYPE string,
              addressvalidfrom          TYPE string,
              addressvalidto            TYPE string,
              Externaladdress           TYPE string,
              AddressTelephone          TYPE string,
              Addressmobilephone        TYPE string,
              AddressFax                TYPE string,
              Addressemail              TYPE string,
              Legalform                 TYPE string,
              LegalEntity               TYPE string,
              Datefounded               TYPE string,
              Liquidation               TYPE string,
              Intlocation               TYPE string,
              Intlocation2              TYPE string,
              Checkdigit                TYPE string,
              FactoryCalendar           TYPE string,
              ExternalBP                TYPE string,
              Military                  TYPE string,
              Nuclear                   TYPE string,
              BPtype                    TYPE string,
              AuthorizationGroup        TYPE string,
              PrintFormat               TYPE string,
              TradingPartnerNo          TYPE string,
              GroupingCharact           TYPE string,
              DataOrigin                TYPE string,
              ENCorrespondence          TYPE string,
              ENAccountingnote          TYPE string,
              ENMarketingnote           TYPE string,
              ENBusinessHours           TYPE string,
              ENNoteLog                 TYPE string,
              ENIPMTest                 TYPE string,
              ENOutboundPackingInstruc  TYPE string,
              ENVendorDescription       TYPE string,
              ArchivingFlag             TYPE string,
              centralBlock              TYPE string,
              notreleased               TYPE string,
              Contact                   TYPE string,
              enddate                   TYPE string,
              Contactdate               TYPE string,
              TargetGroup               TYPE string,
              countryregion             TYPE string,
              RegisteredRegion          TYPE string,
              RegisteredRegOffice       TYPE string,
              BalanceBalSheetCrcy       TYPE string,
              BalSheetDisp              TYPE string,
              CapitIncrease             TYPE string,
              year                      TYPE string,
              vendornumber              TYPE string,
              SupplierAccountGroup      TYPE string,
              GeneralCustomer           TYPE string,
              GeneralAuthorizationGroup TYPE string,
              GroupKey                  TYPE string,
              Repetition                TYPE string,
              DteLimitID                TYPE string,
              Trainstation              TYPE string,
              OriginAcceptance          TYPE string,
              DMERecipientCode          TYPE string,
              InstructionKey            TYPE string,
              payeeindocument           TYPE string,
              AlternativePayee          TYPE string,
              PBCISRNumber              TYPE string,
              PaymentReason             TYPE string,
              SocialInsurance           TYPE string,
              SocialInscode             TYPE string,
              StdCarrAccCode            TYPE string,
              Carfreightgroup           TYPE string,
              StatsGroupagent           TYPE string,
              ServiceAgentProc          TYPE string,
              Profession                TYPE string,
              Externalmanuf             TYPE string,
              PODRelevant               TYPE string,
              Carrierconfirmation       TYPE string,
              PaymentBlock              TYPE string,
              Altpayee                  TYPE string,
              CSTno                     TYPE string,
              LSTno                     TYPE string,
              SerRegNo                  TYPE string,
              pan                       TYPE string,
              PANReference              TYPE string,
              PANDate                   TYPE string,
              DeducteeRefNo             TYPE string,
              BuildingCode              TYPE string,
              Room                      TYPE string,
              Floor                                TYPE string,
              Street3                                 TYPE string,
              StreetHouseNumber                    TYPE string,
              HouseNumber                    TYPE string,
              Street4                                 TYPE string,
              Street5                                 TYPE string,
              District                               TYPE string,
              DifferentCity                           TYPE string,
              co                                      TYPE string,
              CountryReg1                             TYPE string,
              TimeZone                                TYPE string,
              TaxJuris                                TYPE string,
              TransportationZone                      TYPE string,
              StructureGroup                          TYPE string,
              Undeliverable                           TYPE string,
              GenData_Plant                   TYPE string,
              GenData_FactoryCalendar                  TYPE string,
              VSR_Relevant                   TYPE string,
              Plant_Relevant                   TYPE string,
              PostalCodeCity                   TYPE string,
              City                   TYPE string,
              GSTVenclass                   TYPE string,
            END OF GeneralData.

    TYPES : BEGIN OF Purchasingdata,
              Ordercurrency           TYPE string,
              PaymentTerms            TYPE string,
              IncotermsVersion        TYPE string,
              Incoterms               TYPE string,
              IncotermLoc1ID          TYPE string,
              IncotermsLocation1      TYPE string,
              IncotermLoc2ID          TYPE string,
              IncotermsLocation2      TYPE string,
              Minimumordervalue       TYPE string,
              Salesperson             TYPE string,
              SalesTelephone          TYPE string,
              Accountwithsupplier     TYPE string,
              ABCindicator            TYPE string,
              ShippingConditions      TYPE string,
              Grbased                 TYPE string,
              Grfreegoods             TYPE string,
              PROACTcontrolprofile    TYPE string,
              srvbasedinvoice         TYPE string,
              Subsequentsettlement    TYPE string,
              bvolcomp                TYPE string,
              Revaluation             TYPE string,
              Supplierrma             TYPE string,
              PriceDetermination      TYPE string,
              subseqsettlement        TYPE string,
              documentindex           TYPE string,
              Autevgr                 TYPE string,
              Acknowledgment          TYPE string,
              modeoftranspor          TYPE string,
              PurchasingGroup         TYPE string,
              PlannedDelivTime        TYPE string,
              UnitofMeasureGrp        TYPE string,
              RoundingProfile         TYPE string,
              Settlement              TYPE string,
              SchemaGroupSupplier     TYPE string,
              Automaticpurchase       TYPE string,
              PricingDateControl      TYPE string,
              Sortcriterionmaterials  TYPE string,
              ConfirmationControl     TYPE string,
              returnsupplier          TYPE string,
              automaticdebit          TYPE string,
              settlementprofile       TYPE string,
              Absolutesurcharge       TYPE string,
              PercentageHSC           TYPE string,
              MinimumHSC              TYPE string,
              MaximumHSC              TYPE string,
              evalreceipt             TYPE string,
              Planningcalendar        TYPE string,
              Planningcycle           TYPE string,
              Orderoptimzdrestriction TYPE string,
              Customsoffice           TYPE string,
              orderentrysupplier      TYPE string,
              SupplierPriceMarking    TYPE string,
              rackjobbing             TYPE string,
              SupplierServiceLevel    TYPE string,

            END OF Purchasingdata.

    TYPES : BEGIN OF Companycode,
              ReconciliationAcct        TYPE string,
              HeadOffice                TYPE string,
              Sortkey                   TYPE string,
              Subsidyindic              TYPE string,
              AccountAuthorizationGroup TYPE string,
              PlanningGroup             TYPE string,
              ReleaseGroup              TYPE string,
              MinorityIndicator         TYPE string,
              CertificationDate         TYPE string,
              InterestIndicator         TYPE string,
              InterestCycle             TYPE string,
              LastKeyDate               TYPE string,
              LastInterestRun           TYPE string,
              WithholdingTaxCode        TYPE string,
              WTaxCRKey                 TYPE string,
              RecipientType             TYPE string,
              ExemptionNumber           TYPE string,
              Validuntil                TYPE string,
              ExemptionAuthority        TYPE string,
              PreviousAccountNo         TYPE string,
              PersonnelNumber           TYPE string,
              MainEconomicact           TYPE string,
              DistrType                 TYPE string,
              ActivityCodeGITax         TYPE string,
              TermsofPayment            TYPE string,
              CreditMemoPytTerm         TYPE string,
              ToleranceGroup            TYPE string,
              CheckCashingTime          TYPE string,
              PaymentPaymentReason      TYPE string,
              checkdoubleinvoice        TYPE string,
              PaymentMethods            TYPE string,
              HouseBank                 TYPE string,
              AutomaticPaymentBlock     TYPE string,
              PmtMethSupplement         TYPE string,
              Groupingkey               TYPE string,
              Alternativepayee          TYPE string,
              BillExLimit               TYPE string,
              clearingwcustomer         TYPE string,
              singlepayment             TYPE string,
              pmtadviceby               TYPE string,
              PaymentClrgGrpID          TYPE string,
              sentpaymentadvice         TYPE string,
              altpayeedoc               TYPE string,
              InvoiceToleranceGroup     TYPE string,
              PrepaymentRelevance       TYPE string,
              AssignmTestGroup          TYPE string,
              DunningProcedure          TYPE string,
              DunningBlock              TYPE string,
              Dunnrecipient             TYPE string,
              LastDunningNotice         TYPE string,
              LegalDunnProcFrom         TYPE string,
              DunningLevel              TYPE string,
              DunningClerk              TYPE string,
              ClerkAbbrev               TYPE string,
              AccountwithVendor         TYPE string,
              Clerkatvendor             TYPE string,
              Acctclerkstelno           TYPE string,
              Acctgclerkfax             TYPE string,
              Clrksinternetadd          TYPE string,
              localprocessing           TYPE string,
              AccountStatement          TYPE string,
              AccountMemo               TYPE string,
            END OF Companycode.

    TYPES : BEGIN OF GeneralDatatable1,
              Category      TYPE string,
              Name          TYPE string,
              taxnumberlong TYPE string,
              taxregstatus  TYPE string,
            END OF  GeneralDatatable1.

    TYPES : BEGIN OF   GeneralDatatable2,
              id               TYPE string,
              cr               TYPE string,
              Bankkey          TYPE string,
              BankAccount      TYPE string,
              controlkey       TYPE string,
              iban             TYPE string,
              bankaccountalias TYPE string,
              Referencedetails TYPE string,
              extid            TYPE string,
              accountholder    TYPE string,
              accountname      TYPE string,
              deletevalue      TYPE string,
            END OF GeneralDatatable2.

    TYPES : BEGIN OF Purchasingdatatable3,
              pf              TYPE string,
              Partnerfunction TYPE string,
              Number          TYPE string,
              assignbp        TYPE string,
              deletevalue      TYPE string,
            END OF Purchasingdatatable3.

    TYPES : BEGIN OF Companycodetable4,
              Wtaxtype TYPE string,
              Name     TYPE string,
              Subject TYPE string,
              Wtaxcode TYPE string,
              RecType  TYPE string,
              deletevalue      TYPE string,
            END OF Companycodetable4.

 "ID": "001",
      "CR": "AE",
      "Bankkey": "hajipur",
      "BankAccount": "123",
      "controlkey": "12",
      "bankaccountalias": "23",
      "Referencedetails": "23",
      "accountholder": "23",
      "accountname": "23"
    TYPES : BEGIN OF   PaymentTransTableData,
              id               TYPE string,
              cr               TYPE string,
              Bankkey          TYPE string,
              BankAccount      TYPE string,
              controlkey       TYPE string,
              iban             TYPE string,
              bankaccountalias TYPE string,
              Referencedetails TYPE string,
              extid            TYPE string,
              accountholder    TYPE string,
              accountname      TYPE string,
              deletevalue      TYPE string,
            END OF PaymentTransTableData.

    TYPES : BEGIN OF Files,
            Filename    TYPE string,
            Mimetype  TYPE string,
            Content  TYPE zattachment,
            Programname  TYPE string,
            END OF Files.


    CLASS-DATA it1 TYPE TABLE OF GeneralData.
    CLASS-DATA it2 TYPE TABLE OF Purchasingdata.
    CLASS-DATA it3 TYPE TABLE OF Companycode.
    CLASS-DATA it4 TYPE TABLE OF GeneralDatatable1.
    CLASS-DATA it5 TYPE TABLE OF GeneralDatatable2.
    CLASS-DATA it6 TYPE TABLE OF Purchasingdatatable3.
    CLASS-DATA it7 TYPE TABLE OF Companycodetable4.
    CLASS-DATA it8 TYPE TABLE OF PaymentTransTableData.
     CLASS-DATA it10 TYPE TABLE OF Files.



    TYPES : BEGIN OF str,
             LogInId   TYPE string,
              GeneralData          LIKE it1,
              Purchasingdata       LIKE it2,
              Companycode          LIKE it3,
              GeneralDatatable1    LIKE it4,
              GeneralDatatable2    LIKE it5,
              Purchasingdatatable3 LIKE it6,
              Companycodetable4    LIKE it7,
              PaymentTransTableData    LIKE it8,
              aFiles         LIKE it10,

            END OF str.
    CLASS-DATA respo TYPE str .

        TYPES : BEGIN OF DeletetVen,
              Taskid              TYPE string,
              Businesspartner     TYPE string,
              Name                TYPE string,
              Delete              TYPE string,
            END OF DeletetVen.

    CLASS-DATA DeletetVenDor TYPE TABLE OF DeletetVen.

    TYPES : BEGIN OF strdlt,
              tabledata LIKE DeletetVenDor,
            END OF strdlt.
    CLASS-DATA respodlt TYPE strdlt .

    TYPES : BEGIN OF strAPRO,
              taskid   TYPE string,
              Userid   TYPE string,
              Password TYPE string,
            END OF strAPRO.
    CLASS-DATA respoAPRO TYPE strAPRO .

   TYPES : BEGIN OF strRejectio,
              RejectionRemark   TYPE string,
              taskid            TYPE string,
              Userid            TYPE string,
            END OF strRejectio.
    CLASS-DATA respRejectio TYPE strRejectio .

TYPES : BEGIN OF extvendoritem,
              Taskid   TYPE string,
              Businesspartner            TYPE I_Supplier-Supplier,
            END OF extvendoritem.

 CLASS-DATA extvendoritemit TYPE TABLE OF extvendoritem.

 TYPES : BEGIN OF extvendorheand,
              companycode   TYPE string,
              purchaseorg            TYPE string,
            END OF extvendorheand.
  TYPES : BEGIN OF extvendor,
              headerdata                TYPE extvendorheand,
              TableDataArray1           LIKE extvendoritemit,
            END OF extvendor.

    CLASS-DATA respoextven TYPE extvendor .

    INTERFACES if_http_service_extension .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_VENDOR IMPLEMENTATION.


  METHOD if_http_service_extension~handle_request.

    DATA(req) = request->get_form_fields( ).
    DATA(body) = request->get_text( ).
    xco_cp_json=>data->from_string( body )->write_to( REF #( respo  ) ).

    DATA(type) = VALUE #( req[ name = 'type' ]-value OPTIONAL )   .
    DATA(selectedaction) = VALUE #( req[ name = 'selectedaction' ]-value OPTIONAL )   .

    DATA json  TYPE string .
    DATA(userid) = cl_abap_context_info=>get_user_technical_name( ) .

*   DELETE FROM zgeneraldata .
*   DELETE FROM zven_rejection .
*   DELETE FROM zpurchasingdata .
*   DELETE FROM zcompanycode .
*   DELETE FROM zpaymenttranstab .
*   DELETE FROM zmdm_ven_parnter .
*   DELETE FROM zmdm_wiholding_t .
*   DELETE FROM zven_atch_uplod.

IF selectedaction  <> 'VendorExtend' AND  selectedaction  <> 'Change Vendor' AND type <> 'Delete'  AND type <> 'UnDelete' AND type <> 'Approval' AND type <> 'Unapproval' AND type <> 'Reject' .

      DATA: nr_number     TYPE cl_numberrange_runtime=>nr_number.

      TRY.
          CALL METHOD cl_numberrange_runtime=>number_get
            EXPORTING
              nr_range_nr = '02'
              object      = 'ZVEN_NO'
              quantity    = 0000000001
            IMPORTING
              number      = nr_number.

        CATCH cx_nr_object_not_found.
        CATCH cx_number_ranges.
      ENDTRY.
      SHIFT nr_number LEFT DELETING LEADING '0'.
      DATA: lv_nr TYPE c LENGTH 7.
      lv_nr = |{ nr_number ALPHA = OUT }|.

    ENDIF.



  IF type = 'Delete' OR  type = 'UnDelete' .

      xco_cp_json=>data->from_string( body )->write_to( REF #( respodlt ) ).

      DATA create_partner TYPE TABLE FOR UPDATE i_businesspartnertp_3.

READ TABLE respodlt-tabledata INTO DATA(HEA_DATA) INDEX 1.

SELECT SINGLE * FROM ZGENERALDATA_CDS WITH PRIVILEGED ACCESS as a
WHERE Taskid = @HEA_DATA-taskid AND Businesspartner = @hea_data-businesspartner INTO @DATA(GENRALDATA).

IF GENRALDATA IS NOT INITIAL .

create_partner = VALUE #( (
                           %key-BusinessPartner = genraldata-Businesspartner
                           %data-BusinessPartnerIsBlocked     = hea_data-delete
                           %control-BusinessPartnerIsBlocked = if_abap_behv=>mk-on
                           ) ).

    MODIFY ENTITIES OF i_businesspartnertp_3
    ENTITY businesspartner
    UPDATE FROM create_partner

           MAPPED DATA(mapped)
    REPORTED DATA(reported)
    FAILED DATA(failed).
COMMIT ENTITIES BEGIN
 RESPONSE OF i_businesspartnertp_3
     FAILED DATA(failed_commit)
     REPORTED DATA(reported_commit).

DATA VENDORDELT TYPE STRING.
DATA ERROR TYPE STRING.
 If failed_commit  is INITIAL  .

 loop at  mapped-businesspartner ASSIGNING FIELD-SYMBOL(<fs1>)    .
 VENDORDELT   = <fs1>-BusinessPartner   .
 endloop .

 ELSE.
  ERROR = 'E'.
IF reported-businesspartner IS NOT INITIAL .
  VENDORDELT = reported-businesspartner[ 1 ]-%msg->if_message~get_text( ).
ENDIF.
IF reported_commit-businesspartner IS NOT INITIAL .
   VENDORDELT = reported_commit-businesspartner[ 1 ]-%msg->if_message~get_text( ).
 ENDIF.
 endif .
*StatusRetun = ERROR && VENDOR.
COMMIT ENTITIES END .



DATA Supplierdel TYPE I_Supplier-Supplier .
Supplierdel = genraldata-Businesspartner.
DATA DELUBDEL TYPE STRING .

IF hea_data-delete = 'X'.
DELUBDEL = 'DEL'.
ELSE.
DELUBDEL = 'UNDEL'.
ENDIF.
IF Supplierdel IS NOT INITIAL.

 DATA(COMPANY) = zmdm_module_vendor_api_update=>GETDATA( vendor =  Supplierdel taxkid = HEA_DATA-taskid typ = 'COM' DELUNDELTYP = DELUBDEL ).
 DATA(purcadat) = zmdm_module_vendor_api_update=>GETDATA( vendor =  Supplierdel taxkid = HEA_DATA-taskid typ = 'PUR' DELUNDELTYP = DELUBDEL ).

ENDIF.

ENDIF.


      LOOP AT respodlt-tabledata INTO DATA(wa).

            UPDATE zgeneraldata SET
                     flag = @wa-delete,
                     deletiondate = @SY-datum,
                     deletiontime = @SY-timlo
                    WHERE
                  taskid = @WA-taskid .
                  lv_nr =  wa-taskid.
                  CLEAR:wa.
    ENDLOOP.



        IF type = 'UnDelete' .
        CONCATENATE  'Task ID No.'  lv_nr  'UnDeleted Successfuly' INTO json SEPARATED BY ' '.
      ELSE.
        CONCATENATE  'Task ID No.'  lv_nr  'Deleted Successfuly' INTO json SEPARATED BY ' '.
      ENDIF.
      CLEAR:lv_nr.

ELSEIF type = 'Approval' .

      xco_cp_json=>data->from_string( body )->write_to( REF #( respoAPRO ) ).

      UPDATE zgeneraldata SET
                  apstatus  = 'X' ,
                  appid = @respoAPRO-userid,
                  app_date = @sy-datum,
                  app_time = @sy-timlo
                    WHERE
                  taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.
* CONCATENATE  'Task ID No.'  respoAPRO-taskid  'Approved Successfuly'  INTO json SEPARATED BY ' '.  "'And Material Created' material

IF respoAPRO-taskid IS NOT INITIAL.

SELECT SINGLE * FROM zgeneraldata WITH PRIVILEGED ACCESS
WHERE taskid = @respoAPRO-taskid  INTO @DATA(WA_BASICDATA) .

*SELECT SINGLE * FROM I_BusinessPartner WITH PRIVILEGED ACCESS as a
*INNER JOIN I_Supplier WITH PRIVILEGED ACCESS as b ON ( b~Supplier = a~BusinessPartner  )
*WHERE BusinessPartnerIDByExtSystem = @respoAPRO-taskid INTO @DATA(VENDORDETAIL).

* SELECT SINGLE *
*FROM I_Supplier WITH PRIVILEGED ACCESS as a WHERE Supplier = @WA_BASICDATA-businesspartner INTO @data(Supplier).

if WA_BASICDATA-BusinessPartner is INITIAL .

        DATA(VEN) = zcl_mdm_module_vendor_bapi=>CreateVendo( taxkid = respoAPRO-taskid ).
IF VEN IS NOT INITIAL.
          DATA(typeerror) = VEN+0(1).

        DATA(len) = strlen( VEN ).
ENDIF.
        IF typeerror <> 'E' AND typeerror IS NOT INITIAL.

          DATA(Vendor) = VEN+0(10).
          DATA(VEN2) = zcl_mdm_module_ven_update=>createVEN( VENDOR = Vendor taxkid = respoAPRO-taskid  ).

        ENDIF.

      IF VEN2 IS NOT INITIAL .
        CONCATENATE  'Task ID No.'  respoAPRO-taskid  'Approved Successfuly' 'And Vendor Created' VEN INTO json SEPARATED BY ' '.
      ELSE.
        VEN2 = zcl_mdm_module_ven_update=>unapprovedVEN( taxkid = respoAPRO-taskid Userid = '' ).

        CONCATENATE  'Error Task ID No.'  respoAPRO-taskid  'Not Approved Vendor Not Created This Error' VEN INTO json SEPARATED BY ' '.

      ENDIF.
************************************************************Change vendor *******************************************************
else.

     DATA(changeVEN) = zcl_mdm_module_bp_bapi_update=>updateVEN( taxkid = respoAPRO-taskid ).

IF changeVEN IS NOT  INITIAL.
     typeerror = changeVEN+0(1).

        len = strlen( changeVEN ).
*LEN = LEN - 1 .
        Vendor = changeVEN+0(len).
ENDIF.

    IF typeerror <> 'E'.
        CONCATENATE  'Task ID No.'  respoAPRO-taskid 'Approved Successfuly' 'And Vendor Changed Successfuly' Vendor INTO json SEPARATED BY ' '.

    ELSE.

        VEN2 = zcl_mdm_module_ven_update=>unapprovedVEN( taxkid = respoAPRO-taskid Userid = '' ).
        CONCATENATE  'Error Task ID No.'  respoAPRO-taskid  'Not Approved Vendor Not Changed This Error' Vendor INTO json SEPARATED BY ' '.

    ENDIF.


ENDIF.
************************************************************Change vendor *******************************************************
ENDIF.

ELSEIF type = 'Unapproval' .

         xco_cp_json=>data->from_string( body )->write_to( REF #( respoAPRO ) ).

           UPDATE zgeneraldata SET
                  apstatus  = '' ,
                  unappid = @respoAPRO-userid,
                  unapp_date = @sy-datum,
                  unapp_time = @sy-timlo,
                  app_date = '00000000',
                  app_time = '000000'
                    WHERE
                  taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.
 CONCATENATE  'Task ID No.'  respoAPRO-taskid  'UnApproved Successfuly'  INTO json SEPARATED BY ' '.


ELSEIF  type = 'Reject' .

  xco_cp_json=>data->from_string( body )->write_to( REF #( respRejectio ) ).

  DATA WA_zven_rejection TYPE zven_rejection .

        WA_zven_rejection-taskid           = respRejectio-taskid.
        WA_zven_rejection-userid           = respRejectio-userid.
        WA_zven_rejection-rejdate          = SY-datum.
        WA_zven_rejection-rejecttime       = SY-timlo.
        WA_zven_rejection-rejectionremark  = respRejectio-rejectionremark.
        MODIFY zven_rejection FROM @WA_zven_rejection .
        CLEAR:WA_zven_rejection.

  UPDATE zgeneraldata SET
         reject  = 'X'
         WHERE
         taskid = @respRejectio-taskid .
      COMMIT WORK AND WAIT.

 CONCATENATE  'Task ID No.'  respRejectio-taskid  'Rejected Successfuly' INTO json SEPARATED BY ' '.


ELSEIF selectedaction = 'VendorExtend'   .

xco_cp_json=>data->from_string( body )->write_to( REF #( respoextven ) ).

READ TABLE respoextven-tabledataarray1 INTO data(head) INDEX 1.

if respoextven-headerdata-companycode is NOT INITIAL.
 DATA(comVEN2) = zcl_mdm_module_vendor_api=>GETDATA( VENDOR = head-BusinessPartner taxkid = head-taskid typ = 'COM' companycode = respoextven-headerdata-companycode ).

DATA jsonCOM TYPE STRING.
IF comVEN2 IS INITIAL .
CONCATENATE  'Task ID No.' head-taskid 'Company Code Extend Successfuly' INTO jsonCOM SEPARATED BY ' '.
ELSE.
CONCATENATE  'Error Task ID No.' head-taskid 'Company Code Not Extend This Error ' comVEN2 INTO jsonCOM SEPARATED BY ' '.
ENDIF.

ENDIF.

if respoextven-headerdata-purchaseorg is NOT INITIAL.

 daTA(purVEN2) = zcl_mdm_module_vendor_api=>GETDATA( VENDOR = head-BusinessPartner taxkid = head-taskid typ = 'PUR' purchaseorg = respoextven-headerdata-purchaseorg ).
 DATA jsonPUR TYPE STRING.
IF purVEN2 IS INITIAL .
CONCATENATE  'Task ID No.'  head-taskid  'Purchase Data Extend Successfuly' INTO jsonPUR SEPARATED BY ' '.
ELSE.
CONCATENATE  'Error Task ID No.'  head-taskid  'Purchase Data Not Extend This Error ' purVEN2 INTO jsonPUR SEPARATED BY ' '.
ENDIF.

ENDIF.

json = jsonCOM && jsonPUR.
ELSE.

    READ TABLE  respo-generaldata INTO DATA(taskkid) INDEX 1.
    DATA taskkidno TYPE c LENGTH 7.
    IF taskkid-taskid IS INITIAL .
      taskkidno  = lv_nr.
    ELSE.
      taskkidno   = taskkid-taskid.
    ENDIF.

    DATA wa_gen TYPE zgeneraldata.
    LOOP AT respo-generaldata INTO DATA(wa1).

         SELECT SINGLE * FROM zgeneraldata  WITH PRIVILEGED ACCESS AS a
        WHERE taskid = @taskkidno INTO @DATA(oldatataskid).

      wa_gen-taskid = taskkidno.
      wa_gen-businesspartner       = wa1-businesspartner.
      wa_gen-createbp              = wa1-createbp.
      wa_gen-grouping              = wa1-grouping.
      wa_gen-title                 = wa1-title.
      wa_gen-name                  = wa1-name.
      wa_gen-addname               = wa1-name1_2.
      wa_gen-name1                 = wa1-name1.
      wa_gen-name2                 = wa1-name2.
      wa_gen-firstname             = wa1-firstname.
      wa_gen-lastname              = wa1-lastname.
      wa_gen-Language              = wa1-language.
      wa_gen-search1               = wa1-search1.
      wa_gen-search2               = wa1-search2.
      wa_gen-vip                   = wa1-vip.
      wa_gen-UndesirableCustomer   = wa1-undesirablecustomer.
      wa_gen-Reason                = wa1-reason.
      wa_gen-specialcomment        = wa1-specialcomment.
      wa_gen-street1               = wa1-street1.
      wa_gen-street2               = wa1-street2.
      wa_gen-postal1               = wa1-postalcode.
      wa_gen-postal2               = wa1-postal2.
      wa_gen-country               = wa1-country.
      wa_gen-Region                = wa1-region1.
      wa_gen-pobox                     = wa1-pobox.
      wa_gen-postalcode                = wa1-PostalCodeCity.
      wa_gen-City                     = wa1-City.
      wa_gen-companycodepostal         = wa1-companycodepostal.
      wa_gen-Telephone                 = wa1-telephone.
      wa_gen-mobilephone               = wa1-mobilephone.
      wa_gen-Fax                       = wa1-fax.
      wa_gen-email                     = wa1-email.
      wa_gen-Comments                  = wa1-comments.
      if wa1-addressvalidfrom is NOT INITIAL .
      wa_gen-addressvalidfrom          = wa1-addressvalidfrom+0(4) && wa1-addressvalidfrom+5(2) && wa1-addressvalidfrom+8(2) .
      ENDIF.

      if wa1-addressvalidto is NOT INITIAL .
      wa_gen-addressvalidto            = wa1-addressvalidto+0(4) && wa1-addressvalidto+5(2) && wa1-addressvalidto+8(2).
      ENDIF.

      wa_gen-Externaladdress           = wa1-externaladdress.
      wa_gen-AddressTelephone          = wa1-addresstelephone.
      wa_gen-Addressmobilephone        = wa1-addressmobilephone.
      wa_gen-AddressFax                = wa1-addressfax.
      wa_gen-Addressemail              = wa1-addressemail.
      wa_gen-Legalform                 = wa1-legalform.
      wa_gen-LegalEntity               = wa1-legalentity.
      wa_gen-Datefounded               = wa1-datefounded.

      if wa1-liquidation is NOT INITIAL .
      wa_gen-Liquidation               = wa1-liquidation+0(4) && wa1-liquidation+5(2) && wa1-liquidation+8(2) .
      ENDIF.

      wa_gen-Intlocation               = wa1-intlocation.
      wa_gen-Intlocation2              = wa1-intlocation2.
      wa_gen-Checkdigit                = wa1-checkdigit.
      wa_gen-FactoryCalendar           = wa1-factorycalendar.
      wa_gen-ExternalBP                = wa1-externalbp.
      wa_gen-Military                  = wa1-military.
      wa_gen-Nuclear                   = wa1-nuclear.
      wa_gen-BPtype                   = wa1-bptype.
      wa_gen-AuthorizationGroup       = wa1-authorizationgroup.
      wa_gen-PrintFormat              = wa1-printformat.
      wa_gen-TradingPartnerNo         = wa1-tradingpartnerno.
      wa_gen-GroupingCharact          = wa1-groupingcharact.
      wa_gen-DataOrigin               = wa1-dataorigin.
      wa_gen-ENCorrespondence         = wa1-encorrespondence.
      wa_gen-ENAccountingnote         = wa1-enaccountingnote.
      wa_gen-ENMarketingnote          = wa1-enmarketingnote.
      wa_gen-ENBusinessHours          = wa1-enbusinesshours.
      wa_gen-ENNoteLog                = wa1-enbusinesshours.
      wa_gen-ENIPMTest                = wa1-enipmtest.
      wa_gen-ENOutboundPackingInstruc = wa1-enoutboundpackinginstruc.
      wa_gen-ENVendorDescription      = wa1-envendordescription.
      wa_gen-ArchivingFlag            = wa1-archivingflag.
      wa_gen-centralBlock             = wa1-centralblock.
      wa_gen-notreleased              = wa1-notreleased.
      wa_gen-Contact                  = wa1-contact.

      if wa1-enddate is NOT INITIAL .
      wa_gen-enddate                  = wa1-enddate+0(4) && wa1-enddate+5(2) && wa1-enddate+8(2) .
      ENDIF.

      if wa1-contactdate is NOT INITIAL .
      wa_gen-Contactdate              = wa1-contactdate+0(4) && wa1-contactdate+5(2) && wa1-contactdate+8(2).
      ENDIF.

      wa_gen-TargetGroup              = wa1-targetgroup.
      wa_gen-countryregion             = wa1-countryregion.
      wa_gen-RegisteredRegion          = wa1-registeredregion.
      wa_gen-RegisteredRegOffice       = wa1-registeredregoffice.
      wa_gen-BalanceBalSheetCrcy       = wa1-balancebalsheetcrcy.
      wa_gen-BalSheetDisp              = wa1-balsheetdisp.
      wa_gen-CapitIncrease             = wa1-capitincrease.
      wa_gen-zyear                      = wa1-year.
      wa_gen-vendornumber              = wa1-vendornumber.
      wa_gen-SupplierAccountGroup      = wa1-supplieraccountgroup.
      wa_gen-GeneralCustomer           = wa1-generalcustomer.
      wa_gen-GeneralAuthorizationGroup = wa1-generalauthorizationgroup.
      wa_gen-GroupKey                  = wa1-groupkey.
      wa_gen-Repetition                = wa1-repetition.
      wa_gen-DteLimitID                = wa1-dtelimitid.
      wa_gen-Trainstation              = wa1-trainstation.
      wa_gen-OriginAcceptance          = wa1-originacceptance.
      wa_gen-DMERecipientCode          = wa1-dmerecipientcode.
      wa_gen-InstructionKey            = wa1-instructionkey.
      wa_gen-payeeindocument           = wa1-payeeindocument.
      wa_gen-AlternativePayee          = wa1-alternativepayee.
      wa_gen-PBCISRNumber              = wa1-pbcisrnumber.
      wa_gen-PaymentReason             = wa1-paymentreason.
      wa_gen-SocialInsurance           = wa1-socialinsurance.
      wa_gen-SocialInscode             = wa1-socialinscode.
      wa_gen-StdCarrAccCode            = wa1-stdcarracccode.
      wa_gen-Carfreightgroup           = wa1-carfreightgroup.
      wa_gen-StatsGroupagent           = wa1-statsgroupagent.
      wa_gen-ServiceAgentProc          = wa1-serviceagentproc.
      wa_gen-Profession                = wa1-profession.
      wa_gen-Externalmanuf             = wa1-externalmanuf.
      wa_gen-PODRelevant               = wa1-podrelevant.
      wa_gen-Carrierconfirmation       = wa1-carrierconfirmation.
      wa_gen-PaymentBlock              = wa1-paymentblock.
      wa_gen-Altpayee                  = wa1-alternativepayee.
      wa_gen-CSTno                     = wa1-cstno.
      wa_gen-LSTno                     = wa1-lstno.
      wa_gen-SerRegNo                  = wa1-serregno.
      wa_gen-pan                       = wa1-pan.
      wa_gen-PANReference              = wa1-panreference.

      IF wa1-pandate IS NOT INITIAL.
      wa_gen-PANDate                   = wa1-pandate+0(4) && wa1-pandate+5(2) && wa1-pandate+8(2) .
      ENDIF.

      wa_gen-DeducteeRefNo             = wa1-deducteerefno.


      READ TABLE respo-GeneralDatatable1 INTO DATA(wa4) INDEX 1.

      wa_gen-Category      = wa4-category.
      wa_gen-categoryname      = wa4-name.
      wa_gen-taxnumberlong = wa4-taxnumberlong.
      wa_gen-taxregstatus  = wa4-taxregstatus.

      READ TABLE respo-generaldatatable2 INTO DATA(wa5) INDEX 1.
      wa_gen-id              = wa5-id.
      wa_gen-cr              = wa5-cr.
      wa_gen-Bankkey         = wa5-bankkey.
      wa_gen-BankAccount     = wa5-bankaccount.
      wa_gen-controlkey      = wa5-controlkey.
      wa_gen-iban            = wa5-iban.
      wa_gen-bankaccountalias = wa5-bankaccountalias.
      wa_gen-Referencedetails = wa5-referencedetails.
      wa_gen-extid           = wa5-extid.
      wa_gen-accountholder   = wa5-accountholder.
      wa_gen-accountname     = wa5-accountname.

      wa_gen-BuildingCode          = wa1-buildingcode.
      wa_gen-Room                  = wa1-room.
      wa_gen-Floor                 = wa1-floor.
      wa_gen-Street3               = wa1-street3.
      wa_gen-StreetHouseNumber     = wa1-streethousenumber.
      wa_gen-Street4               = wa1-street4.
      wa_gen-Street5               = wa1-street5.
      wa_gen-District              = wa1-district.
      wa_gen-DifferentCity         = wa1-differentcity.
      wa_gen-co                    = wa1-co.
      wa_gen-CountryReg1           = wa1-countryreg1.
      wa_gen-ZTimeZone              = wa1-timezone.
      wa_gen-TaxJuris              = wa1-taxjuris.
      wa_gen-TransportationZone    = wa1-transportationzone.
      wa_gen-StructureGroup        = wa1-structuregroup.
      wa_gen-Undeliverable         = wa1-undeliverable.
      wa_gen-gendata_plant         = wa1-gendata_plant.
      wa_gen-factorycalendra         = wa1-gendata_factorycalendar.
      wa_gen-vsr_relevant         = wa1-vsr_relevant.
      wa_gen-plant_relevant         = wa1-plant_relevant.
      wa_gen-HouseNumber   = WA1-HouseNumber.
      wa_gen-GSTVenclass   = WA1-GSTVenclass.

        IF selectedaction  = 'Change Vendor' .

          wa_gen-created_by      = oldatataskid-created_by.
          wa_gen-created_date    = oldatataskid-created_date.
          wa_gen-created_time    = oldatataskid-created_time.
          wa_gen-login_id        = oldatataskid-login_id.
        ELSE.
          wa_gen-created_by      = userid.
          wa_gen-created_date    = sy-datum.
          wa_gen-created_time    = sy-timlo.
          wa_gen-login_id        = respo-loginid.
        ENDIF.

        wa_gen-change_by       = userid .
        wa_gen-change_date     = sy-datum.
        wa_gen-change_time     = sy-timlo.
        wa_gen-change_login_id = respo-loginid.

      MODIFY zgeneraldata FROM @wa_gen.
      CLEAR:wa_gen,wa1.
      CLEAR:wa4,wa5.
    ENDLOOP.

    DATA wa_pur TYPE zpurchasingdata.
    LOOP AT respo-Purchasingdata INTO DATA(wa2).

READ TABLE RESPO-generaldata INTO DATA(PUORG) INDEX 1 .
      wa_pur-taskid = taskkidno.
      wa_pur-Ordercurrency           = wa2-ordercurrency.
      wa_pur-PaymentTerms            = wa2-paymentterms.
      wa_pur-purchaseorg             = PUORG-Purchaseorg.
      wa_pur-IncotermsVersion        = wa2-incotermsversion.
      wa_pur-Incoterms               = wa2-incoterms.
      wa_pur-IncotermLoc1ID          = wa2-incotermloc1id.
      wa_pur-IncotermsLocation1      = wa2-incotermslocation1.
      wa_pur-IncotermLoc2ID          = wa2-incotermloc2id.
      wa_pur-IncotermsLocation2      = wa2-incotermslocation2.
      wa_pur-Minimumordervalue       = wa2-minimumordervalue.
      wa_pur-Salesperson             = wa2-salesperson.
      wa_pur-SalesTelephone          = wa2-salestelephone.
      wa_pur-Accountwithsupplier     = wa2-accountwithsupplier.
      wa_pur-ABCindicator            = wa2-abcindicator.
      wa_pur-ShippingConditions      = wa2-shippingconditions.
      wa_pur-Grbased                 = wa2-grbased.
      wa_pur-Grfreegoods             = wa2-grfreegoods.
      wa_pur-PROACTcontrolprofile    = wa2-proactcontrolprofile.
      wa_pur-srvbasedinvoice         = wa2-srvbasedinvoice.
      wa_pur-Subsequentsettlement    = wa2-subsequentsettlement.
      wa_pur-bvolcomp                = wa2-bvolcomp.
      wa_pur-Revaluation             = wa2-revaluation.
      wa_pur-Supplierrma             = wa2-supplierrma.
      wa_pur-PriceDetermination      = wa2-pricedetermination.
      wa_pur-subseqsettlement        = wa2-subseqsettlement.
      wa_pur-documentindex           = wa2-documentindex.
      wa_pur-Autevgr                 = wa2-autevgr.
      wa_pur-Acknowledgment          = wa2-acknowledgment.
      wa_pur-modeoftranspor          = wa2-modeoftranspor.
      wa_pur-PurchasingGroup        = wa2-purchasinggroup.
      wa_pur-PlannedDelivTime       = wa2-planneddelivtime.
      wa_pur-UnitofMeasureGrp        = wa2-unitofmeasuregrp.
      wa_pur-RoundingProfile         = wa2-roundingprofile.
      wa_pur-Settlement              = wa2-settlement.
      wa_pur-SchemaGroupSupplier     = wa2-schemagroupsupplier.
      wa_pur-Automaticpurchase       = wa2-automaticpurchase.
      wa_pur-PricingDateControl      = wa2-pricingdatecontrol.
      wa_pur-Sortcriterionmaterials  = wa2-sortcriterionmaterials.
      wa_pur-ConfirmationControl     = wa2-confirmationcontrol.
      wa_pur-returnsupplier          = wa2-returnsupplier.
      wa_pur-automaticdebit          = wa2-automaticdebit.
      wa_pur-settlementprofile       = wa2-settlementprofile.
      wa_pur-Absolutesurcharge       = wa2-absolutesurcharge.
      wa_pur-PercentageHSC           = wa2-percentagehsc.
      wa_pur-MinimumHSC              = wa2-minimumhsc.
      wa_pur-MaximumHSC              = wa2-maximumhsc.
      wa_pur-evalreceipt             = wa2-evalreceipt.
      wa_pur-Planningcalendar        = wa2-planningcalendar.
      wa_pur-Planningcycle           = wa2-planningcycle.
      wa_pur-Orderoptimzdrestriction = wa2-orderoptimzdrestriction.
      wa_pur-Customsoffice           = wa2-customsoffice.
      wa_pur-orderentrysupplier      = wa2-orderentrysupplier.
      wa_pur-SupplierPriceMarking    = wa2-supplierpricemarking.
      wa_pur-rackjobbing             = wa2-rackjobbing.
      wa_pur-SupplierServiceLevel    = wa2-supplierservicelevel.

      READ TABLE respo-purchasingdatatable3 INTO DATA(wa6) INDEX 1.

      wa_pur-pf             = wa6-pf.
      wa_pur-Partnerfunction = wa6-partnerfunction.
      wa_pur-tablenumber           = wa6-number.
      wa_pur-assignbp        = wa6-assignbp.

      MODIFY zpurchasingdata FROM @wa_pur.
      CLEAR:wa_pur,wa2,wa6.
    ENDLOOP.



    DATA wa_com TYPE zcompanycode.

    LOOP AT respo-Companycode  INTO DATA(wa3).
    READ TABLE RESPO-generaldata INTO PUORG INDEX 1 .
      wa_com-taskid                    = taskkidno.
      wa_com-zcompanycode              = PUORG-companycode.
      wa_com-ReconciliationAcct        = wa3-reconciliationacct.
      wa_com-HeadOffice                = wa3-headoffice.
      wa_com-Sortkey                   = wa3-sortkey.
      wa_com-Subsidyindic              = wa3-subsidyindic.
      wa_com-AccountAuthorizationGroup = wa3-accountauthorizationgroup.
      wa_com-PlanningGroup             = wa3-planninggroup.
      wa_com-ReleaseGroup              = wa3-releasegroup.
      wa_com-MinorityIndicator         = wa3-minorityindicator.

      IF wa3-certificationdate IS NOT INITIAL .
      wa_com-CertificationDate         = wa3-certificationdate+0(4) && wa3-certificationdate+5(2) && wa3-certificationdate+8(2) .
      ENDIF.

      wa_com-InterestIndicator         = wa3-interestindicator.
      wa_com-InterestCycle             = wa3-interestcycle.

      IF wa3-lastkeydate IS NOT INITIAL.
      wa_com-LastKeyDate               = wa3-lastkeydate+0(4) && wa3-lastkeydate+5(2) && wa3-lastkeydate+8(2).
      ENDIF.

      wa_com-LastInterestRun           = wa3-lastinterestrun.
      wa_com-WithholdingTaxCode        = wa3-withholdingtaxcode.
      wa_com-WTaxCRKey                 = wa3-wtaxcrkey.
      wa_com-RecipientType             = wa3-recipienttype.
      wa_com-ExemptionNumber           = wa3-exemptionnumber.
      wa_com-Validuntil                = wa3-validuntil.
      wa_com-ExemptionAuthority        = wa3-exemptionauthority.
      wa_com-PreviousAccountNo         = wa3-previousaccountno.
      wa_com-PersonnelNumber           = wa3-personnelnumber.
      wa_com-MainEconomicact           = wa3-maineconomicact.
      wa_com-DistrType                 = wa3-distrtype.
      wa_com-ActivityCodeGITax         = wa3-activitycodegitax.
      wa_com-TermsofPayment            = wa3-termsofpayment.
      wa_com-CreditMemoPytTerm         = wa3-creditmemopytterm.
      wa_com-ToleranceGroup            = wa3-tolerancegroup.
      wa_com-CheckCashingTime          = wa3-checkcashingtime.
      wa_com-PaymentPaymentReason      = wa3-paymentpaymentreason.
      wa_com-checkdoubleinvoice        = wa3-checkdoubleinvoice.
      wa_com-PaymentMethods            = wa3-paymentmethods.
      wa_com-HouseBank                 = wa3-housebank.
      wa_com-AutomaticPaymentBlock    = wa3-automaticpaymentblock.
      wa_com-PmtMethSupplement        = wa3-pmtmethsupplement.
      wa_com-Groupingkey              = wa3-groupingkey.
      wa_com-Alternativepayee         = wa3-alternativepayee.
      wa_com-BillExLimit              = wa3-billexlimit.
      wa_com-clearingwcustomer        = wa3-clearingwcustomer.
      wa_com-singlepayment            = wa3-singlepayment.
      wa_com-pmtadviceby              = wa3-pmtadviceby.
      wa_com-PaymentClrgGrpID         = wa3-paymentclrggrpid.
      wa_com-sentpaymentadvice        = wa3-sentpaymentadvice.
      wa_com-altpayeedoc              = wa3-altpayeedoc.
      wa_com-InvoiceToleranceGroup    = wa3-invoicetolerancegroup.
      wa_com-PrepaymentRelevance      = wa3-prepaymentrelevance.
      wa_com-AssignmTestGroup         = wa3-assignmtestgroup.
      wa_com-DunningProcedure         = wa3-dunningprocedure.
      wa_com-DunningBlock             = wa3-dunningblock.
      wa_com-Dunnrecipient            = wa3-dunnrecipient.
      wa_com-LastDunningNotice        = wa3-lastdunningnotice.
      wa_com-LegalDunnProcFrom        = wa3-legaldunnprocfrom.
      wa_com-DunningLevel             = wa3-dunninglevel.
      wa_com-DunningClerk             = wa3-dunningclerk.
      wa_com-ClerkAbbrev              = wa3-clerkabbrev.
      wa_com-AccountwithVendor        = wa3-accountwithvendor.
      wa_com-Clerkatvendor            = wa3-clerkatvendor.
      wa_com-Acctclerkstelno          = wa3-acctclerkstelno.
      wa_com-Acctgclerkfax            = wa3-acctgclerkfax.
      wa_com-Clrksinternetadd         = wa3-clrksinternetadd.
      wa_com-localprocessing          = wa3-localprocessing.
      wa_com-AccountStatement         = wa3-accountstatement.
      wa_com-AccountMemo              = wa3-accountmemo.
      READ TABLE respo-companycodetable4 INTO DATA(wa7) INDEX 1.

      wa_com-wtaxtype      = wa7-wtaxtype.
      wa_com-name          = wa7-name.
      wa_com-wtaxcode      = wa7-wtaxcode.
      wa_com-rectype       = wa7-rectype.


      MODIFY zcompanycode FROM @wa_com.
      CLEAR:wa_com,wa3,wa7.
    ENDLOOP.

     DATA wa_zpaymenttranstab TYPE zpaymenttranstab.

    LOOP AT respo-PaymentTransTableData INTO DATA(wa8).

      wa_zpaymenttranstab-taskid           = taskkidno.
      wa_zpaymenttranstab-id               = wa8-id.
      wa_zpaymenttranstab-cr               = wa8-cr.
      wa_zpaymenttranstab-Bankkey          = wa8-bankkey.
      wa_zpaymenttranstab-BankAccount      = wa8-bankaccount.
      wa_zpaymenttranstab-controlkey       = wa8-controlkey.
      wa_zpaymenttranstab-iban             = wa8-iban.
      wa_zpaymenttranstab-bankaccountalias = wa8-bankaccountalias.
      wa_zpaymenttranstab-Referencedetails = wa8-referencedetails.
      wa_zpaymenttranstab-extid            = wa8-extid.
      wa_zpaymenttranstab-accountholder    = wa8-accountholder.
      wa_zpaymenttranstab-accountname      = wa8-accountname.
      wa_zpaymenttranstab-deletevalue      = WA8-deletevalue.

      MODIFY zpaymenttranstab FROM @wa_zpaymenttranstab.
      CLEAR:wa_zpaymenttranstab.
    ENDLOOP.

     DATA wa_zmdm_ven_parnter TYPE zmdm_ven_parnter.
     LOOP AT respo-purchasingdatatable3 INTO DATA(wa9) .

      wa_zmdm_ven_parnter-taskid           = taskkidno.
      wa_zmdm_ven_parnter-pf               = wa9-pf.
      wa_zmdm_ven_parnter-Partnerfunction  = wa9-partnerfunction.
      wa_zmdm_ven_parnter-tablenumber      = wa9-number.
      wa_zmdm_ven_parnter-assignbp         = wa9-assignbp.
      wa_zmdm_ven_parnter-deletevalue      = WA9-deletevalue.

      MODIFY zmdm_ven_parnter FROM @wa_zmdm_ven_parnter.
      CLEAR:wa_zmdm_ven_parnter,wa9.
    ENDLOOP.

    DATA wa_zmdm_wiholding_t TYPE zmdm_wiholding_t.

     LOOP AT respo-companycodetable4 INTO DATA(wa10).

      wa_zmdm_wiholding_t-taskid           = taskkidno.
      wa_zmdm_wiholding_t-wtaxtype         = wa10-wtaxtype.
      wa_zmdm_wiholding_t-Subject          = wa10-Subject.
      wa_zmdm_wiholding_t-name             = wa10-name.
      wa_zmdm_wiholding_t-wtaxcode         = wa10-wtaxcode.
      wa_zmdm_wiholding_t-rectype          = wa10-rectype.
      wa_zmdm_wiholding_t-deletevalue      = wa10-deletevalue.

      MODIFY zmdm_wiholding_t FROM @wa_zmdm_wiholding_t.
      CLEAR:wa_zmdm_wiholding_t,wa10.
    ENDLOOP.


         DATA WA_VEN_atch_uplod TYPE zVEN_atch_uplod .
     READ TABLE respo-generaldata  INTO DATA(TAS) INDEX 1.

       LOOP AT respo-aFiles INTO DATA(wa_ONUPLOAD).

        IF TAS-taskid IS INITIAL .
          WA_VEN_atch_uplod-taskid  = lv_nr.
        ELSE.
          WA_VEN_atch_uplod-taskid   = TAS-taskid.
        ENDIF.

        WA_VEN_atch_uplod-attachment  = wa_ONUPLOAD-content.
        WA_VEN_atch_uplod-contentname  = wa_ONUPLOAD-filename.
        WA_VEN_atch_uplod-filename  = wa_ONUPLOAD-filename.
        WA_VEN_atch_uplod-mimetype  = wa_ONUPLOAD-mimetype.
        WA_VEN_atch_uplod-note  = wa_ONUPLOAD-programname.

        MODIFY zVEN_atch_uplod FROM @WA_VEN_atch_uplod .
        CLEAR:WA_VEN_atch_uplod.

      ENDLOOP.

    IF selectedaction  <> 'Change Vendor' .

      CONCATENATE  ' Data Saved Successfuly And Task ID No.'  taskkidno INTO json SEPARATED BY ' '.
    ELSE.

      CONCATENATE  'Task ID No.'  taskkidno  'Update Successfuly' INTO json SEPARATED BY ' '.

    ENDIF.
ENDIF.
    response->set_text( json  )  .
  ENDMETHOD.
ENDCLASS.
