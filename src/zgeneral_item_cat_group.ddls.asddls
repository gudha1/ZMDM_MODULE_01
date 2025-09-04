@AbapCatalog.sqlViewName: 'YGITCATGRP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For General Item Cat Group F4'
define view ZGeneral_Item_Cat_Group as select from I_ItemCategoryGroupText
{
    key ItemCategoryGroup,
    ItemCategoryGroupName
} 
where Language = 'E'
