@AbapCatalog.sqlViewName: 'ZVALUACATEGORY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Valuation Category F4'
define view ZValuationCategory_F4 as select from I_ProductValuationCategoryText
{
    key InventoryValuationCategory,
    InventoryValuationCategoryName
}
where Language = 'E'
