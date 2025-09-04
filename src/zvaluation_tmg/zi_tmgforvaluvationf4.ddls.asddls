@EndUserText.label: 'Tmg for valuvation f4'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZI_TmgForValuvationF4
  as select from zvaluation_tmg
  association to parent ZI_TmgForValuvationF4_S as _TmgForValuvationAll on $projection.SingletonID = _TmgForValuvationAll.SingletonID
{
  key material_type as MaterialType,
  key valuvation as Valuvation,
   valuationdes as Valuationdes,
  @Consumption.hidden: true
  1 as SingletonID,
  _TmgForValuvationAll
  
}
