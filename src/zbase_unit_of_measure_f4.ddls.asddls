@AbapCatalog.sqlViewName: 'YUOMF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
define view ZBASE_UNIT_OF_MEASURE_F4 as select from I_UnitOfMeasureText as a 
{
    key UnitOfMeasure,
        UnitOfMeasureName
} 
where a.Language = 'E'
