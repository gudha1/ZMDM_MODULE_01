@AbapCatalog.sqlViewName: 'ZHSNCODEF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Hsn Code F4'
define view ZHSN_CODE_F4 as select from I_ProductPlantBasic
{
    key ConsumptionTaxCtrlCode
} 
group by 
    ConsumptionTaxCtrlCode
