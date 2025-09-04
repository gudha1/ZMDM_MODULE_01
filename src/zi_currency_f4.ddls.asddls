@AbapCatalog.sqlViewName: 'ZCURRENCY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds FOR  Order Currency f4'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_CURRENCY_F4 as select from I_Currency as A
{
   key A.Currency 
}
group by A.Currency 
