@AbapCatalog.sqlViewName: 'YMATSTATGRP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For  Material Statistics Group Text F4'
define view ZMaterialStatisticsGroup_F4 as select from I_MaterialStatisticsGroupText
{
    key MaterialStatisticsGroup,
    MaterialStatisticsGroupDesc
}
where Language = 'E'
