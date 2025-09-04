@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'zwt_ty_a_wta_tab_f4_cds'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zwt_ty_a_wta_tab_f4 as select from zwt_ty_a_wta_tab
{
    key withholding_tax_type,
    key wtax_type_name,
    key withholding_tax_code,
    wtax_code_name
//    localcreatedby,
//    localcreatedat,          
//    locallastchangedby,
//    locallastchangedat,
//    lastchangedat  
}
