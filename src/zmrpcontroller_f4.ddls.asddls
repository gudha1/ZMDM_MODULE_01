@AbapCatalog.sqlViewName: 'YMRPCONTROLLER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MRP Controller F4'
define view ZMRPController_F4 as select from I_MRPController
{
    key Plant,
    key MRPController,
    MRPControllerName
}

