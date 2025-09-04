@AbapCatalog.sqlViewName: 'ZPAYMENTTERMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer  Terms of Payment F4'
@Metadata.ignorePropagatedAnnotations: true
define view ZCustomer_Terms_of_Payment_F4 as select from I_CustomerSalesArea as A
{
    key A.PaymentTerms
}group by A.PaymentTerms
