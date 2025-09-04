@AbapCatalog.sqlViewName: 'YMATTYPRF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
define view ZMAT_TYPE_F4 as select from I_ProductTypeText as a 
{
    key ProductType,
        MaterialTypeName
} 
where a.Language = 'E'
