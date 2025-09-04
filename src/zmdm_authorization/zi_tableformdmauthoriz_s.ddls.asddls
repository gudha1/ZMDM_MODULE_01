@EndUserText.label: 'Table For MDM Authorization Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'TableForMdmAuthoAll'
  }
}
define root view entity ZI_TableForMdmAuthoriz_S
  as select from I_Language
    left outer join ZDB_MDM_AUTH on 0 = 0
  association [0..*] to I_ABAPTransportRequestText as _ABAPTransportRequestText on $projection.TransportRequestID = _ABAPTransportRequestText.TransportRequestID
  composition [0..*] of ZI_TableForMdmAuthoriz as _TableForMdmAuthoriz
{
  @UI.facet: [ {
    id: 'ZI_TableForMdmAuthoriz', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'Table For MDM Authorization', 
    position: 1 , 
    targetElement: '_TableForMdmAuthoriz'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key 1 as SingletonID,
  _TableForMdmAuthoriz,
  @UI.hidden: true
  max( ZDB_MDM_AUTH.LASTCHANGEDAT ) as LastChangedAtMax,
  @ObjectModel.text.association: '_ABAPTransportRequestText'
  @UI.identification: [ {
    position: 2 , 
    type: #WITH_INTENT_BASED_NAVIGATION, 
    semanticObjectAction: 'manage'
  } ]
  @Consumption.semanticObject: 'CustomizingTransport'
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  _ABAPTransportRequestText
  
}
where I_Language.Language = $session.system_language
