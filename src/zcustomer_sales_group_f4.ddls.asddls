@AbapCatalog.sqlViewName: 'ZSALESGROUP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Sales Group S4'
@Metadata.ignorePropagatedAnnotations: true
define view ZCustomer_Sales_Group_F4 as select from I_SalesOfficeSalesGroup as A
{
    key A.SalesOffice as SalesOffice,
    key A.SalesGroup as SalesGroup
}group by  
A.SalesGroup,
A.SalesOffice
