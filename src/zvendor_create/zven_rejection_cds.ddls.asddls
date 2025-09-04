@AbapCatalog.sqlViewName: 'YREJCDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZVEN_REJECTION_CDS as select from zven_rejection
{
    key taskid as Taskid,
    key userid as Userid,
    key rejdate as Rejdate,
    key rejecttime as Rejecttime,
    rejectionremark as Rejectionremark
}
