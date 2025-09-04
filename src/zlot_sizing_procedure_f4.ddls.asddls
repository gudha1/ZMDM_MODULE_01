@AbapCatalog.sqlViewName: 'ZLOTSIZPDUREF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For lot sizing procedure F4'
define view Zlot_sizing_procedure_F4 as select from I_MRPLotSizingProcedureText
{
    key MaterialLotSizingProcedure,
    MaterialLotSizingProcedureName
} 
where Language = 'E'
