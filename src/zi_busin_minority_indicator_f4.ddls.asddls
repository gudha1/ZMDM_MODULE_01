@AbapCatalog.sqlViewName: 'ZMINORITY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds FOR  Minority Indicator  f4'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_BUSIN_Minority_Indicator_F4 as select from I_BusinessPartnerBank as A
{
  key A.BusinessPartner   
}
