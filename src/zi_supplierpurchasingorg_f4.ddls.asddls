@AbapCatalog.sqlViewName: 'YPAYMENTTERMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds FOR  Terms of Payment f4'
@Metadata.ignorePropagatedAnnotations: true
define view zI_SUPPLIERPURCHASINGORG_f4 as select from I_PaymentTermsText
{
    key PaymentTerms,
        case when PaymentTermsName is initial then PaymentTermsDescription else PaymentTermsName end as PaymentTermsName
}
where Language = 'E'
group by 
PaymentTerms,
PaymentTermsDescription,
PaymentTermsName
