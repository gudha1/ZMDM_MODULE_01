@AbapCatalog.sqlViewName: 'YPURCHASEGRP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Purchasing Group F4'
define view ZPurchasingGroup_F4 as select from I_PurchasingGroup
{
    key PurchasingGroup,
    PurchasingGroupName
}
