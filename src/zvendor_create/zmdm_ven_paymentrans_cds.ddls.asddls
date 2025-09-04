@AbapCatalog.sqlViewName: 'YMDM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZMDM_VEN_PAYMENTRANS_CDS as select from zpaymenttranstab
{
    key taskid as Taskid,
    key id as Id,
    cr as Cr,
    bankkey as Bankkey,
    bankaccount as Bankaccount,
    controlkey as Controlkey,
    iban as Iban,
    bankaccountalias as Bankaccountalias,
    referencedetails as Referencedetails,
    extid as Extid,
    accountholder as Accountholder,
    accountname as Accountname,
    deletevalue
}
