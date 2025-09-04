@AbapCatalog.sqlViewName: 'ZOVERHEADGROUP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Overhead Group F4'
define view ZOverheadGroup_F4 as select from I_CostingOverheadGroupText
{

    key CostingOverheadGroup,
    CostingOverheadGroupName
}
where Language = 'E' 
group by
   CostingOverheadGroup,
   CostingOverheadGroupName
