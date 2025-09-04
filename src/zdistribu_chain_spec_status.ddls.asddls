@AbapCatalog.sqlViewName: 'YDIS_SPE_STATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Distribution Chain Specification Status'
define view ZDistribu_Chain_Spec_Status as select from I_ProfitCenterText
{
key Language,
key ControllingArea,
key ProfitCenter,
key ValidityEndDate,
ValidityStartDate, 
ProfitCenterName,
ProfitCenterLongName,
/* Associations */
_ControllingArea,
_ControllingAreaText,
_Language
}
