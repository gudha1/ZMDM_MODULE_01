@AbapCatalog.sqlViewName: 'ZMATGRPF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
define view ZMaterial_Group_F4 as select from I_ProductGroupText_2
{
    key ProductGroup,
        ProductGroupName
}
where Language = 'E'
