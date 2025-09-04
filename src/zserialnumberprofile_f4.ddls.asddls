@AbapCatalog.sqlViewName: 'ZSERIALNOPROF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Serial Number Profile F4'
define view ZSerialNumberProfile_F4 as select from I_SerialNumberProfileText
{
    key SerialNumberProfile,
    SerialNumberProfileDescription
} 
where Language = 'E'
