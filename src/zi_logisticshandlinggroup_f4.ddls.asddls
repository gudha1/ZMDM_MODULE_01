@AbapCatalog.sqlViewName: 'YLOGISTIC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Logistics Handling GroupT  F4'
define view ZI_LogisticsHandlingGroup_F4 as select from I_ProdLogisticsHandlingGroupT
{
    key ProductLogisticsHandlingGroup,
    Name
}
where Language = 'E'
