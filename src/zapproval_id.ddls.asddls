@AbapCatalog.sqlViewName: 'YMDMAPPROVAL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Workflow'
@Metadata.ignorePropagatedAnnotations: true
define view ZAPPROVAL_ID as select from zmat_viewauth as a 
{
    key appr_id
}  

group by 
    appr_id
