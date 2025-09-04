@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'wtax_type_f4'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zwtax_type_f4 as select from zwt_ty_a_wta_tab
{
    key withholding_tax_type,
    key wtax_type_name
}
group by
    withholding_tax_type,
    wtax_type_name

 