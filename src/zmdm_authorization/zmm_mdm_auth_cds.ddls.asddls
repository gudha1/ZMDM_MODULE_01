@AbapCatalog.sqlViewName: 'YCDSMMDAUTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Master Authorization'
@Metadata.ignorePropagatedAnnotations: true
define view zMM_mdm_auth_CDS as select from zdb_mdm_auth
{
    key user_id as UserId,
    key material_master as MaterialMaster,
    vendor_master as VendorMaster,
    customer_master as CustomerMaster,
    localcreatedby as Localcreatedby,
    localcreatedat as Localcreatedat,
    locallastchangedby as Locallastchangedby,
    locallastchangedat as Locallastchangedat,
    lastchangedat as Lastchangedat
}
