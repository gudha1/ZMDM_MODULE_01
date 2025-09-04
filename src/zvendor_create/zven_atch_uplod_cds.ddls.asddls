@AbapCatalog.sqlViewName: 'YVENATU'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Vendor'
@Metadata.ignorePropagatedAnnotations: true
define view zven_atch_uplod_CDS as select from zven_atch_uplod
{
    key contentname as Contentname,
    key taskid as Taskid,
    key srno as Srno,
    attachment as Attachment,
    mimetype as Mimetype,
    filename as Filename
}
