@AbapCatalog.sqlViewName: 'ZPURORG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds FOR  Purchase Organization F4'
@Metadata.ignorePropagatedAnnotations: true
define view ZPurchase_Organization_F4 as select from I_PurchasingOrganization as A
{
  key A.PurchasingOrganization  
}
group by A.PurchasingOrganization  
