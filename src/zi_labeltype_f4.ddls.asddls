@AbapCatalog.sqlViewName: 'ZLABELTYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Label Type F4'
define view ZI_LabelType_F4 as select from I_LabelType
{

    key LabelType
}
group by LabelType
