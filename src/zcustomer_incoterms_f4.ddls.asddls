@AbapCatalog.sqlViewName: 'ZCUSTOINCOTERMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Incoterms  S4'
@Metadata.ignorePropagatedAnnotations: true
define view ZCustomer_Incoterms_F4 as select from I_IncotermsClassificationText as A
{
    key A.IncotermsClassification as IncotermsClassification,
        A.IncotermsClassificationName
       
}
 where Language = 'E' 
 group by 
A.IncotermsClassification,
A.IncotermsClassificationName
