@EndUserText.label: 'Material Master Views control by Materia'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZI_MaterialMasterViews
  as select from ZMAT_MATTYPE
  association to parent ZI_MaterialMasterViews_S as _MaterialMasterViAll on $projection.SingletonID = _MaterialMasterViAll.SingletonID
{
  key VIEW_CODE as ViewCode,
  key VIEW_NAME as ViewName,
  key MTART as Mtart,
  @Consumption.hidden: true
  1 as SingletonID,
  _MaterialMasterViAll
  
}
