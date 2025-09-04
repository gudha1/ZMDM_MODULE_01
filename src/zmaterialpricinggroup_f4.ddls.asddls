@AbapCatalog.sqlViewName: 'YMATGRPF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Material Pricing Group Text F4'
define view ZMaterialPricingGroup_F4 as select from I_MaterialPricingGroupText
{
    key MaterialPricingGroup,
    MaterialPricingGroupName
} where Language = 'E'
group by 
 MaterialPricingGroup,
    MaterialPricingGroupName
