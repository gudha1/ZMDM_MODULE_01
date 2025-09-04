@AbapCatalog.sqlViewName: 'YMDMPARTNER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZMDM_VEN_PARNTER_CDS as select from zmdm_ven_parnter
{
    key taskid as Taskid,
    key pf as Pf,
    partnerfunction as Partnerfunction,
    tablenumber as Tablenumber,
    assignbp as Assignbp,
    deletevalue
}
