@AbapCatalog.sqlViewName: 'ZREMPROFILE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For REM Profile F4'
define view ZREM_Profile_F4 as select from I_RepetitiveMfgProfileText
{
     key RepetitiveManufacturingProfile,
     RepetitiveMfgProfileName
}
where Language = 'E'
