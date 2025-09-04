@AbapCatalog.sqlViewName: 'YDISTRICHANNEL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Distribution channel F4'
define view ZDistribution_channel_F4 as select from I_DistributionChannelText
{
    key DistributionChannel,
    DistributionChannelName
}
where Language = 'E' and (DistributionChannel = '01'  ) 
//or DistributionChannel = '24'
