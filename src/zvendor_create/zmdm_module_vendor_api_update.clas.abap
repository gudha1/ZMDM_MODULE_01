CLASS zmdm_module_vendor_api_update DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    CLASS-METHODS :
      UpdateVendo
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
      RETURNING VALUE(StatusRetun) TYPE string.

      CLASS-METHODS :
      GETDATA
      IMPORTING VALUE(vendor)  TYPE I_Supplier-Supplier OPTIONAL
      VALUE(TaxkID)  TYPE STring OPTIONAL
      VALUE(TYP)  TYPE string OPTIONAL
      VALUE(DELUNDELTYP)  TYPE string OPTIONAL
      RETURNING VALUE(Status) TYPE string,

      Vendo_po
      IMPORTING VALUE(json)  TYPE string OPTIONAL
      VALUE(vendor)  TYPE I_Supplier-Supplier OPTIONAL
      VALUE(COMPANYCODE)  TYPE I_CompanyCode-CompanyCode OPTIONAL
      VALUE(PURGORG)  TYPE ZPURCHASINGDATA_CDS-Purchaseorg OPTIONAL
      VALUE(TYP)  TYPE string OPTIONAL
      RETURNING VALUE(resp1) TYPE string,
      gET_ERROR
      IMPORTING VALUE(JSON)   TYPE string OPTIONAL
      RETURNING VALUE(ERROR_DESC) TYPE string,
      CreateDOCUMENT
      IMPORTING VALUE(JSON)   TYPE string OPTIONAL
      RETURNING VALUE(MAterialdocument) TYPE string,
      get_mat
      IMPORTING VALUE(mat)      TYPE i_product-Product
      RETURNING VALUE(material) TYPE char18.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMDM_MODULE_VENDOR_API_UPDATE IMPLEMENTATION.


METHOD CreateDOCUMENT.
   DATA lv TYPE string.
    FIELD-SYMBOLS <data>  TYPE data.
    FIELD-SYMBOLS <field> TYPE any.
    DATA(lr_d1) = /ui2/cl_json=>generate( json = json ).
    IF lr_d1 IS  BOUND .
    ASSIGN lr_d1->* TO <data>.
    ASSIGN COMPONENT `D` OF STRUCTURE <data> TO <field>.
    IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      ASSIGN COMPONENT `COMPANYCODE` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
        ASSIGN <field>->* TO <data>.
        IF sy-subrc = 0.
          ASSIGN COMPONENT `VALUE` OF STRUCTURE <data> TO <field>.
          ASSIGN <field>->* TO <data>.
        ENDIF.
      ENDIF.
    ENDIF.
     MAterialdocument  =   <data> .
    ENDIF .

  ENDMETHOD.


METHOD GETDATA.

DELETE  FROM zgeneraldata WHERE taskid = '01000102' .
SELECT SINGLE * FROM ZCOMPANYCODE_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO @Data(company).

SELECT SINGLE * FROM ZPURCHASINGDATA_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO @Data(paymentrans).

SELECT SINGLE * FROM ZGENERALDATA_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO @Data(genrdata).
SELECT * FROM ZMDM_WIHOLDING_TAX_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO TABLE @Data(withholdtax).
 DATA fin_json TYPE STRING.
 DATA(rb) = '{'.
 DATA(lb) = '}'.

IF TYP = 'COM'  AND DELUNDELTYP <> 'DEL'  AND DELUNDELTYP <> 'UNDEL'.
fin_json = fin_json &&
 | { rb } | &
 | { '"d": {' } | &
 |"AuthorizationGroup": "{ company-Accountauthorizationgroup }",| .

 IF company-Automaticpaymentblock <> ''.
 fin_json = fin_json &&
 |"SupplierIsBlockedForPosting": { 'true' },| .
 ENDIF.

 fin_json = fin_json &&
   |"AccountingClerkFaxNumber": "{ company-Acctgclerkfax }", | &
   |"AccountingClerkPhoneNumber": "{ company-Acctclerkstelno }", | &
   |"SupplierClerk": "{ company-Accountwithvendor }", | &
   |"PaymentMethodsList": "{ company-Paymentmethods }", | &
   |"PaymentReason": "{ company-Paymentpaymentreason }", | &
   |"PaymentTerms": "{ company-Termsofpayment }", | .

 IF company-Clearingwcustomer <> ''.
 fin_json = fin_json &&
 |"ClearCustomerSupplier": { 'true' },| .
 ENDIF.

   IF company-Localprocessing <> ''.
   fin_json = fin_json &&
   |"IsToBeLocallyProcessed": { 'true' },| .
   ENDIF.

   IF company-Sentpaymentadvice <> '' .
   fin_json = fin_json &&
   |"PaymentIsToBeSentByEDI": { company-Sentpaymentadvice },| .
   ENDIF.

   fin_json = fin_json &&
   |"HouseBank": "{ company-Housebank }",| &
   |"SupplierClerkIDBySupplier": "{ company-Clerkatvendor }",| &
   |"SupplierHeadOffice": "{ company-Headoffice }",| &
   |"AlternativePayee": "{ company-Alternativepayee }",| &
   |"LayoutSortingRule": "{ company-Sortkey }",| &
   |"APARToleranceGroup": "{ company-Tolerancegroup }",| &
   |"WithholdingTaxCountry": "{ company-Wtaxcrkey }",| &
   |"CashPlanningGroup": "{ company-Planninggroup }",| .

   IF company-Checkdoubleinvoice <>  '' .
    fin_json = fin_json &&
   |"IsToBeCheckedForDuplicates": { 'true' },| .
   ENDIF.
 fin_json = fin_json &&
 |"CompanyCode": "{ company-Companycode }",| &
 |"ReconciliationAccount": "{ company-Reconciliationacct }",| .


  fin_json = fin_json &&
 |"SupplierAccountGroup": "{ genrdata-Supplieraccountgroup }"| &

* |"to_SupplierWithHoldingTax": { '{' }        | &
* |"results":    { '[' }                                                 | .
*
*
********************************************************************************
*SELECT FROM @withholdtax as a
*FIELDS COUNT( * ) INTO @DATA(COUNTLINE).
*DATA N TYPE I .
*
*LOOP AT withholdtax INTO DATA(wa_withholdtax).
*
* N = N + 1 .
*
*fin_json = fin_json &&
* |        { '{' }                                                       | &
* |           "Supplier": "{ vendor }",                                | &
* |           "CompanyCode": "{ company-Companycode }",                             | &
* |           "WithholdingTaxType": "{ wa_withholdtax-Wtaxtype }",                      | .
** |           "ExemptionDateBegin": "/Date(1492041600000)/",       | &
** |           "ExemptionDateEnd": "/Date(1492041600000)/",         | &
** |           "ExemptionReason": "string",                         | &
*
*IF wa_withholdtax-Subject <> '' .
* fin_json = fin_json &&
* |           "IsWithholdingTaxSubject": { wa_withholdtax-Subject },                     | .
* ENDIF.
*
*
* fin_json = fin_json &&
* |           "RecipientType": "{ wa_withholdtax-Rectype }",                           | &
** |           "WithholdingTaxCertificate": "{ withholdtax- }",               | &
* |           "WithholdingTaxCode": "{ wa_withholdtax-Wtaxcode }"                      | &
** |           "WithholdingTaxExmptPercent": "0",                   | &
** |           "WithholdingTaxNumber": "{ withholdtax-t }"                    | &
** |           "AuthorizationGroup": "string"                       | &
* |    { '}' }                                                     | .
*
*   IF countline <> 1 AND N <> countline .
*     fin_json = fin_json &&
*     | ,| .
*    ENDIF.
*
* ENDLOOP.
*
********************************************************************************
* fin_json = fin_json &&
* |  { ']' }                                                       | &
* | { '}' }                                                        | &
*
* |{  ',' } | &
* |   "to_SupplierDunning":  { '{' }                                                       | &
* |      "results": { '[' }                                                                | &
* |          { '{' }                                                                      | &
* |            "Supplier": "{ vendor }",                                               | &
* |            "CompanyCode": "{ company-Companycode }",                                            | &
** |            "DunningArea": "{ company-d }",                                            | &
* |            "DunningBlock": "{ company-Dunningblock }",                                           | &
* |            "DunningLevel": "{ company-Dunninglevel }",                                           | &
* |            "DunningProcedure": "{ company-Dunningprocedure }",                                       | &
* |            "DunningRecipient": "{ company-Dunnrecipient }",                                       | &
** |            "LastDunnedOn": "/Date(1492041600000)/",                            | &
** |            "LegDunningProcedureOn": "/Date(1492041600000)/",                   | &
* |            "DunningClerk": "{ company-Dunningclerk }",                                           | &
* |            "AuthorizationGroup": "{ company-Accountauthorizationgroup }",                                     | &
* |            "SupplierAccountGroup": "{ genrdata-Supplieraccountgroup }"                                    | &
* |         { '}' }                                                                | &
* |       { ']' }                                                                  | &
* |   { '}' }         | &

| { lb } | &
 | { lb } | .


ELSEIF TYP = 'PUR'   AND DELUNDELTYP <> 'DEL'  AND DELUNDELTYP <> 'UNDEL'.


fin_json = fin_json &&
 | { rb } | &
 | { ' "d": {' }| &
|  "CalculationSchemaGroupCode": "{ paymentrans-Schemagroupsupplier }",|   &
| "IncotermsClassification": "{ paymentrans-Incoterms }",| &
| "IncotermsTransferLocation": "{ paymentrans-Incoterms }",| &
|  "IncotermsVersion": "{ paymentrans-Incotermsversion }",      |   &
|  "IncotermsLocation1": "{ paymentrans-Incotermslocation1 }",      |   &
|  "IncotermsLocation2": "{ paymentrans-Incotermslocation2 }",      |   .

if paymentrans-Grbased = 'X'.
fin_json = fin_json &&
|  "InvoiceIsGoodsReceiptBased": { 'true' },      |   .
ENDIF.

fin_json = fin_json &&
|  "PaymentTerms": "{ paymentrans-Paymentterms }",      |   &
|  "PurchaseOrderCurrency": "{ paymentrans-Ordercurrency }",      |   &
|  "PurchasingGroup": "{ paymentrans-Purchasinggroup }",      |   &
|  "RoundingProfile": "{ paymentrans-Roundingprofile }",      |   &
|  "AuthorizationGroup": "{ genrdata-Authorizationgroup }",      |   &
|  "SupplierAccountGroup": "{ genrdata-Supplieraccountgroup  }"    |   &
  | { lb } | &
  | { lb } | .


ELSEIF  ( DELUNDELTYP = 'DEL'  ) AND ( TYP = 'PUR' OR TYP = 'COM').

fin_json = fin_json &&
    | { '{' } | &
    | { '"d": {' }| &
    |"DeletionIndicator": true | &
    |{ '}' }| &
    |{ '}' }|.

ELSEIF  ( DELUNDELTYP = 'UNDEL'  ) AND ( TYP = 'PUR' OR TYP = 'COM').

fin_json = fin_json &&
    | { '{' } | &
    | { '"d": {' }| &
    |"DeletionIndicator": false | &
    |{ '}' }| &
    |{ '}' }|.

ENDIF.

 CONDENSE fin_json .

   TRY .
    DATA(status261) = Vendo_po( json = fin_json vendor = vendor typ = typ companycode = company-Companycode purgorg = paymentrans-Purchaseorg ).
    CATCH cx_static_check.
  ENDTRY .
   status = status261.
ENDMETHOD.


 METHOD get_error.

      DATA lv TYPE string.
      FIELD-SYMBOLS <data>  TYPE data.
      FIELD-SYMBOLS <field> TYPE any.
      DATA(lr_d1) = /ui2/cl_json=>generate( json = json ).

      IF lr_d1 IS  BOUND .
      ASSIGN lr_d1->* TO <data>.
      ASSIGN COMPONENT `ERROR` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      ASSIGN COMPONENT `INNERERROR` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      IF sy-subrc = 0.
      ASSIGN COMPONENT `ERRORDETAILS` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      LOOP AT <data> ASSIGNING FIELD-SYMBOL(<fs>).
      ASSIGN <fs>->* TO FIELD-SYMBOL(<fs1>) .
      ASSIGN COMPONENT `MESSAGE` OF STRUCTURE <fs1> TO <field>    .
      IF sy-subrc = 0.
      ASSIGN COMPONENT `VALUE` OF STRUCTURE <data> TO <field>.
      ASSIGN <field>->* TO <data>.
      DATA ERRORMSJ TYPE STRING.
      ERRORMSJ = ERRORMSJ && cl_abap_char_utilities=>cr_lf && <data> .
      ENDIF.
      ENDLOOP.
      ENDIF.
      ENDIF.
      ENDIF.
      ELSE.
      ASSIGN COMPONENT `MESSAGE` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      IF sy-subrc = 0.
      ASSIGN COMPONENT `VALUE` OF STRUCTURE <data> TO <field>.
      ASSIGN <field>->* TO <data>.
      ERRORMSJ  =  <data>.
      ENDIF.
      ENDIF.
      ENDIF.
      ERROR_DESC  =   ERRORMSJ .

      ENDIF .

 ENDMETHOD.


METHOD get_mat.
    DATA matnr TYPE char18.

    matnr = |{ mat ALPHA = IN }|.
    material = matnr.
  ENDMETHOD.


   METHOD if_oo_adt_classrun~main.
   DATA(RESS) = GETDATA( vendor = '0100000213'  taxkid = '1000123' typ = 'PUR' ).
  ENDMETHOD.


 METHOD UpdateVendo.


* {
   "Supplier": "100000153",
   "CompanyCode": "2000",
   "PaymentTerms": "0001",
   "Currency": "INR",
   "ReconciliationAccount": "12110000",
   "SupplierAccountGroup": "SUPL",
   "IsToBeCheckedForDuplicates": true
*}

*https://my409624.s4hana.cloud.sap:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_Supplier(%27100000153%27)/to_SupplierCompany


*{
*   "Supplier": "100000153",
*   "PurchasingOrganization": "1000",
*   "CalculationSchemaGroupCode": "ZD",
*   "IncotermsVersion": "",
*   "IncotermsLocation1": "",
*   "IncotermsLocation2": "",
*   "InvoiceIsGoodsReceiptBased": "X",
*   "PaymentTerms": "0001",
*   "PurchaseOrderCurrency": "INR",
*   "PurchasingGroup": "P01",
*   "RoundingProfile": "",
*   "AuthorizationGroup": "",
*   "SupplierAccountGroup": "SUPL",
*   "to_PurchasingOrgText": {
*      "results": [
*         {
*            "Supplier": "100000153",
*            "PurchasingOrganization": "1000",
*            "Language": "E",
*            "LongTextID": "TEST"
*         }
*      ]
*   }
*}
 ENDMETHOD.


  METHOD Vendo_po.

    TRY.

IF TYP = 'COM' .
DATA lv_url TYPE STRING.

lv_url = |https://{ cl_abap_context_info=>get_system_url(  ) }:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_SupplierCompany(Supplier=%27{ vendor }%27,CompanyCode=%27{ companycode }%27)|.

ELSEIF TYP = 'PUR'.

lv_url = |https://{ cl_abap_context_info=>get_system_url(  ) }:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_SupplierPurchasingOrg(Supplier=%27{ vendor }%27,PurchasingOrganization=%27{ purgorg }%27)|.

ENDIF.

        DATA(lo_http_destination) =
             cl_http_destination_provider=>create_by_url( lv_url ).
        DATA(lo_web_http_client1) = cl_web_http_client_manager=>create_by_http_destination( lo_http_destination ).
        DATA(lo_web_http_request1) = lo_web_http_client1->get_http_request( ).
        lo_web_http_request1->set_authorization_basic( i_username = 'MIG0311'
                                                       i_password = 'TnsaKwxsYGoVMb+WTAznkK5bLbBcUbwynDnmDTNU' ).
        lo_web_http_request1->set_header_field( i_name  = 'X-CSRF-Token'
                                                i_value = 'fetch'  ).
        DATA(lo_web_http_response1) = lo_web_http_client1->execute( if_web_http_client=>get ).
        DATA(lv_response1) = lo_web_http_response1->get_header_fields( ).
        DATA(lv_COOKIE) = lo_web_http_response1->get_cookies( ).
        DATA(token) = VALUE #( lv_response1[ name = 'x-csrf-token' ]-value OPTIONAL ).

        " Create Http destination by url; API Endpoint for API Sandbox
        DATA(lo_http_destination1) =
             cl_http_destination_provider=>create_by_url( lv_url ).
        " create HTTP client by destination
        DATA(lo_web_http_client) = cl_web_http_client_manager=>create_by_http_destination( lo_http_destination1 ).
        " Adding headers
        DATA(lo_web_http_request) = lo_web_http_client->get_http_request( ).
        lo_web_http_request->set_authorization_basic( i_username = 'MIG0311'
                                                      i_password = 'TnsaKwxsYGoVMb+WTAznkK5bLbBcUbwynDnmDTNU' ).
        lo_web_http_request->set_header_fields( VALUE #( (  name = 'x-csrf-token' value = token )
                                                         (  name = 'DataServiceVersion' value = '2.0' )
                                                         (  name = 'Accept' value = 'application/json' )
                                                         (  name = 'Content-Type' value = 'application/json' ) ) ).
        DATA(cookie11) = lv_COOKIE[ 1 ].
        lo_web_http_request->set_cookie( i_domain  = cookie11-domain
                                         i_expires = cookie11-expires
                                         i_name    = cookie11-name
                                         i_path    = cookie11-path
                                         i_secure  = cookie11-secure
                                         i_value   = cookie11-value  ).

        CONDENSE json.
        lo_web_http_request->set_text( json ).
        " set request method and execute request
        DATA(lo_web_http_response) = lo_web_http_client->execute( if_web_http_client=>patch ).
        data(status)   =  lo_web_http_response->get_status( ) .
        data(Error1)   =  lo_web_http_response->get_text( ) .


        IF status-code = '201'.
*          resp1 =  |{ status-code } { createdocument( json =  lo_web_http_response->get_text( ) )  } |.
         "  resp1 =  |201  Created Successfully|  .
        ELSE.
          resp1 =  |{ status-code }{ 'Error' }{ get_error( json =  lo_web_http_response->get_text( ) )  } |.
        ENDIF.

      CATCH cx_http_dest_provider_error cx_web_http_client_error cx_web_message_error.
        " error handling
    ENDTRY.

 ENDMETHOD.
ENDCLASS.
