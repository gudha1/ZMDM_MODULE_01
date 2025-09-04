@AbapCatalog.sqlViewName: 'YVENDROCOPY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Vendor Copy'
@Metadata.ignorePropagatedAnnotations: true
define view ZVEN_COPY as select from zgeneraldata as a 
left outer join zpurchasingdata as b on ( b.taskid = a.taskid )
left outer join zcompanycode as c on ( c.taskid = a.taskid )
{
        key a.taskid as Taskid,
        key a.grouping as Grouping,
        key b.purchaseorg,
        key c.zcompanycode
}
