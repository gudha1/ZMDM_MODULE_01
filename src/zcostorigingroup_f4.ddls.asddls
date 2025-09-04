@AbapCatalog.sqlViewName: 'ZCOSTORIGINGROUP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Cost Origin Group F4'
define view ZCostOriginGroup_F4 as select from I_CostOriginGroupText
{
   key CostOriginGroup,
       CostOriginGroupName
}
where Language = 'E'
group by 
CostOriginGroup,     
CostOriginGroupName  
