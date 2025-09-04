@AbapCatalog.sqlViewName: 'YPLANSTRAGROUP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For PlanningStrategyGroup F4'
define view ZPlanningStrategyGroup_F4 as select from I_PlanningStrategyGroupText
{
    key PlanningStrategyGroup,
    PlanningStrategyGroupName
}
where Language = 'E'
