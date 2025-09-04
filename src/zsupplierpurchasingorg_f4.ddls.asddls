@AbapCatalog.sqlViewName: 'YCDSSCGROUPSUP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Schema Group Supplier'
@Metadata.ignorePropagatedAnnotations: true
define view ZSUPPLIERPURCHASINGORG_F4 as select from I_SupplierPurchasingOrg

{
    key Supplier
}
