@AbapCatalog.sqlViewName: 'YPRHIERARCHY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Product Hierarchy'
define view ZProductHierarchy_F4 as select from I_Product as a //  I_ProductSalesDelivery
{
    key ProductHierarchy
} 
group by 
     ProductHierarchy
