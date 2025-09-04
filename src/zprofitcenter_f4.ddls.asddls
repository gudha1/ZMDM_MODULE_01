@AbapCatalog.sqlViewName: 'YPROFITCENF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Profit Center F4'
define view ZProfitCenter_F4 as select from I_ProfitCenterText
{
    key ProfitCenter,
    ProfitCenterName
}  
where Language = 'E'
group by 
    ProfitCenter,
    ProfitCenterName
