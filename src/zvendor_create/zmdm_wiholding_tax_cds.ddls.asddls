@AbapCatalog.sqlViewName: 'YMDMWITHHOL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZMDM_WIHOLDING_TAX_CDS as select from zmdm_wiholding_t
{
    key taskid as Taskid,
    key wtaxtype as Wtaxtype,
    name as Name,
    subject as Subject,
    wtaxcode as Wtaxcode,
    rectype as Rectype,
    deletevalue
}
