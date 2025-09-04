@AbapCatalog.sqlViewName: 'ZVALUF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For valuationclass F4'
define view Zvaluationclass_F4_TMG as select from zvaluation_tmg
{
    key material_type as MaterialType,
    key valuvation as Valuvation,
    valuationdes
}
