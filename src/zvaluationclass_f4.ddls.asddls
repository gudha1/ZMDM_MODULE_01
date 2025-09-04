@AbapCatalog.sqlViewName: 'ZVALUATIONCLASF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For valuationclass F4'
define view Zvaluationclass_F4 as select from I_Prodvaluationclasstxt
{
    key ValuationClass,
    ValuationClassDescription
} 
where Language = 'E'
