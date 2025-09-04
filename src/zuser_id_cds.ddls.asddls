@AbapCatalog.sqlViewName: 'YMDMMODULE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
define view ZUSER_ID_CDS as select from zuser_id
{
    key userid as Userid,
    password as Password
}
