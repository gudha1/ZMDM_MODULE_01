@AbapCatalog.sqlViewName: 'YEANCAT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For EAN Category F4'
define view ZEAN_Category_F4 as select from I_Intntnlartnmbcattext
{
    key InternationalArticleNumberCat,
    IntlArticleNumberCatName
}
where Language = 'E'
