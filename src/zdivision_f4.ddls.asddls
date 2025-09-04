@AbapCatalog.sqlViewName: 'ZUOM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
define view ZDIVISION_F4 as select from I_DivisionText
{
    key Division,
        DivisionName
}
where Language = 'E'
and Division <> '00'
