@AbapCatalog.sqlViewName: 'YMDMF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Volume Rebate Group'
define view ZVolumeRebateGroup_F4 as select from I_ProductSalesDelivery
{
    key VolumeRebateGroup 
}

group by 
      VolumeRebateGroup
