@EndUserText.label: 'Master View Authorization Table'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZI_MasterViewAuthoriza
  as select from ZMAT_VIEWAUTH
  association to parent ZI_MasterViewAuthoriza_S as _MasterViewAuthorAll on $projection.SingletonID = _MasterViewAuthorAll.SingletonID
{
  key VIEW_CODE as ViewCode,
  key UNAME as Uname,
  VIEW_NAME as ViewName,
  CREATE1 as Create1,
  CHANGE as Change,
  DISPLAY as Display,
  TASKLIST as Tasklist,
  APPR_ID as ApprId,
  APPR_TASK as ApprTask,
  @Consumption.hidden: true
  1 as SingletonID,
  _MasterViewAuthorAll
  
}
