@AbapCatalog.sqlViewName: 'ZCONTROLCODE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Control Code F4'
define view ZControl_Code_F4 as select from I_AE_CnsmpnTaxCtrlCodeTxt
{
    key ConsumptionTaxCtrlCode,
    ConsumptionTaxCtrlCodeText1
}
where Language = 'E' 
