@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'wtax_recipient_f4'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zwtax_recipient_f4 as select from zwt_an_re_ty_tab
{
    key withholding_tax_type,
    key recipient_type,
    text,                  
    localcreatedby,    
    localcreatedat,       
    locallastchangedby,   
    locallastchangedat,   
    lastchangedat
}
