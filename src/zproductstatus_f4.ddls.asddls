@AbapCatalog.sqlViewName: 'YPRODUCTSTATUSF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Product Status F4'
define view ZProductStatus_F4 as select from I_ProductStatusText
{
    key Status,
    MaterialUsabilityProfileName
} 
where Language = 'E'
