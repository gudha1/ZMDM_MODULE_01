@AbapCatalog.sqlViewName: 'YCOMIONGROUPF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Material Commission Group F4'
define view ZMaterialCommissionGroup_F4 as select from I_MaterialCommissionGroupText
{
    key MaterialCommissionGroup,
    MaterialCommissionGroupName
}
where Language = 'E'
