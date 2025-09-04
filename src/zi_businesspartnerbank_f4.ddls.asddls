@AbapCatalog.sqlViewName: 'YBANKKEY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds FOR  Bank Key f4'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_BUSINESSPARTNERBANK_F4 as select from I_BusinessPartnerBank as a
{
    key a.BankAccountHolderName
}
group by a.BankAccountHolderName
