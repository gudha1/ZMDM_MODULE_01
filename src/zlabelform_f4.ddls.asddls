@AbapCatalog.sqlViewName: 'ZLABELFORM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Label Form F4'
define view ZLabelForm_F4 as select from I_LabelForm
{

    key LabelForm
}
group by 
LabelForm
