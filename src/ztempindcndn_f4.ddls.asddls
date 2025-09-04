@AbapCatalog.sqlViewName: 'ZTEMPCONDITIONS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Temp.Conditions F4'
define view ZTempindcndn_F4 as select from I_Tempindcndntext
{
    key TemperatureConditionInd,
    TemperatureConditionIndName
}
where   Language = 'E'
