@AbapCatalog.sqlViewName: 'YINCOTERMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds FOR  Incoterms f4'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_INCOTERMSCLASSIFICATION_F4 as select from I_IncotermsClassificationText as A
{
    key  A.IncotermsClassification,
         A.IncotermsClassificationName
}
where A.Language = 'E'
