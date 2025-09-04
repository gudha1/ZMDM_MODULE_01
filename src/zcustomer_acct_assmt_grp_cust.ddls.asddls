@AbapCatalog.sqlViewName: 'ZCUSTOMER_ACCT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Acct Assmt Grp Cust'
@Metadata.ignorePropagatedAnnotations: true
define view ZCustomer_Acct_Assmt_Grp_Cust as select from I_CustomerAccountAssgmtGroupT as A
{
    key A.CustomerAccountAssignmentGroup as CustomerAccountAssignmentGroup,
        A.CustomerAccountAssgmtGrpName
  
}
 
 where A.Language = 'E'
