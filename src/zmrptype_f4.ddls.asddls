@AbapCatalog.sqlViewName: 'YMRPTYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MRPType  F4'
define view ZMRPType_F4 as select from I_MRPTypeText
{
    key MRPType,
    MRPTypeName
} 
where Language = 'E'
