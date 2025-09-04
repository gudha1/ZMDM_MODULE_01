@AbapCatalog.sqlViewName: 'ZSPECPROCCOSTING'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For SpecProcurem Costing F4'
define view ZSpecProcuremCosting_F4 as select from I_MatlProcurementProfileText
{
    key MaterialProcurementProfile,
    MaterialProcurementProfileName
}
where Language = 'E'
group by 
MaterialProcurementProfile,
MaterialProcurementProfileName
