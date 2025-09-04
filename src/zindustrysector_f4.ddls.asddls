@AbapCatalog.sqlViewName: 'YINDUSTRYSECTF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Industry Sector f4'
define view zIndustrySector_f4 as select from I_IndustrySectorText_2 as A 
{
    key IndustrySector,
    IndustrySectorName
}
where Language = 'E'
