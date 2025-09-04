@EndUserText.label: 'Table For MDM Authorization'
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
define view entity ZI_TableForMdmAuthoriz
  as select from ZDB_MDM_AUTH
  association to parent ZI_TableForMdmAuthoriz_S as _TableForMdmAuthoAll on $projection.SingletonID = _TableForMdmAuthoAll.SingletonID
{
  key USER_ID as UserId,
  key MATERIAL_MASTER as MaterialMaster,
  VENDOR_MASTER as VendorMaster,
  CUSTOMER_MASTER as CustomerMaster,
  @Semantics.user.createdBy: true
  LOCALCREATEDBY as Localcreatedby,
  @Semantics.systemDateTime.createdAt: true
  LOCALCREATEDAT as Localcreatedat,
  @Semantics.user.localInstanceLastChangedBy: true
  @Consumption.hidden: true
  LOCALLASTCHANGEDBY as Locallastchangedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  @Consumption.hidden: true
  LOCALLASTCHANGEDAT as Locallastchangedat,
  @Semantics.systemDateTime.lastChangedAt: true
  LASTCHANGEDAT as Lastchangedat,
  @Consumption.hidden: true
  1 as SingletonID,
  _TableForMdmAuthoAll
  
}
