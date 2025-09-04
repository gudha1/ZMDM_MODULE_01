@AbapCatalog.sqlViewName: 'YACCTASSMTGRPMAT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Acct Assmt Grp Mat. F4'
define view ZMatlAccountAssignmentGroup_F4 as select from I_MatlAccountAssignmentGroupT
{
    key MatlAccountAssignmentGroup,
    MatlAccountAssignmentGroupName
}
where Language = 'E'
group by  
      MatlAccountAssignmentGroup,
      MatlAccountAssignmentGroupName
