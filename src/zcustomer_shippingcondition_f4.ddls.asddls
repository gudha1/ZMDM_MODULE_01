@AbapCatalog.sqlViewName: 'ZSHIPPINGCONDI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer  Shipping Condition F4'
@Metadata.ignorePropagatedAnnotations: true
define view ZCustomer_ShippingCondition_F4 as select from I_ShippingConditionText as A
{
    key A.ShippingCondition as ShippingCondition,
        A.ShippingConditionName
}
where Language = 'E' 
group by A.ShippingCondition,
A.ShippingConditionName
