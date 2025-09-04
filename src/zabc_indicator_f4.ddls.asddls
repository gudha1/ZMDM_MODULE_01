@AbapCatalog.sqlViewName: 'ZABCINDICATORF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For ABC indicator F4'
define view ZABC_indicator_F4 as select from I_Prodabclassfctntxt
{
    key MaterialABCClassification,
    MaterialABCClassificationDesc
} 
where Language = 'E'
