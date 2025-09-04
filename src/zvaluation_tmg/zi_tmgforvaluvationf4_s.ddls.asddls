@EndUserText.label: 'Tmg for valuvation f4 Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'TmgForValuvationAll'
  }
}
define root view entity ZI_TmgForValuvationF4_S
  as select from I_Language
    left outer join I_CstmBizConfignLastChgd on I_CstmBizConfignLastChgd.ViewEntityName = 'ZI_TMGFORVALUVATIONF4'
  association [0..*] to I_ABAPTransportRequestText as _I_ABAPTransportRequestText on $projection.TransportRequestID = _I_ABAPTransportRequestText.TransportRequestID
  composition [0..*] of ZI_TmgForValuvationF4 as _TmgForValuvationF4
{
  @UI.facet: [ {
    id: 'ZI_TmgForValuvationF4', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'TMG for Valuation Class', 
    position: 1 , 
    targetElement: '_TmgForValuvationF4'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key 1 as SingletonID,
  _TmgForValuvationF4,
  @UI.hidden: true
  I_CstmBizConfignLastChgd.LastChangedDateTime as LastChangedAtMax,
  @ObjectModel.text.association: '_I_ABAPTransportRequestText'
  @UI.identification: [ {
    position: 2 , 
    type: #WITH_INTENT_BASED_NAVIGATION, 
    semanticObjectAction: 'manage'
  } ]
  @Consumption.semanticObject: 'CustomizingTransport'
  cast( '' as sxco_transport) as TransportRequestID,
  _I_ABAPTransportRequestText
  
}
where I_Language.Language = $session.system_language
