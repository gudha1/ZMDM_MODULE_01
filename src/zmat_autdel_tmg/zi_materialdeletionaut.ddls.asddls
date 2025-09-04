@EndUserText.label: 'Material Deletion Authorization'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZI_MaterialDeletionAut
  as select from ZMAT_AUTDEL
  association to parent ZI_MaterialDeletionAut_S as _MaterialDeletionAll on $projection.SingletonID = _MaterialDeletionAll.SingletonID
{
  key UNAME as Uname,
  DELETE1 as Delete1,
  @Consumption.hidden: true
  1 as SingletonID,
  _MaterialDeletionAll
  
}
