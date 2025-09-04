@AbapCatalog.sqlViewName: 'YCGROUP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Group F4 MDM'
@Metadata.ignorePropagatedAnnotations: true
define view ZCustomer_Group_F4 as select from I_CustomerSalesArea as A
{
  key A.CustomerGroup  
}
group by A.CustomerGroup  
