@AbapCatalog.sqlViewName: 'YMATF4MDM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Material F4'
define view ZMDM_MAT_F4 as select from I_ProductDescription_2
{
    key Product,
    ProductDescription
}
where Language = 'E'
