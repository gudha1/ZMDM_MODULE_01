@AbapCatalog.sqlViewName: 'YITEMCATEGROUP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Item Category Group F4'
define view ZItemCategoryGroupF4 as select from I_ItemCategoryGroupText
{
    key ItemCategoryGroup,
    ItemCategoryGroupName
} 
where Language = 'E'
