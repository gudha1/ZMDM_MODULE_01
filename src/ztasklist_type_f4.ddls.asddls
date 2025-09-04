@AbapCatalog.sqlViewName: 'ZTASKLISTTYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For TaskList Type F4'
define view ZTaskList_Type_F4 as select from I_BillOfOperationsTypeText
{
    key BillOfOperationsType,
    BillOfOperationsTypeName
}
where Language = 'E'
