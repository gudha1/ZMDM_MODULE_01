@AbapCatalog.sqlViewName: 'YSTOCKDETERMIGRP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For StockDeterminationGroup F4'
define view ZStockDeterminationGroup_F4 as select from I_StockDeterminationGroupText
{
key Plant,
key StockDeterminationGroup,
StockDeterminationGroupText
}
where Language = 'E'
