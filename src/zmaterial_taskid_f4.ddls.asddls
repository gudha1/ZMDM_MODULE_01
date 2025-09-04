@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For taskid F4'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMaterial_taskid_F4 as select from zmat_basicdata_m as A
{
    key A.taskid,
         A.matnr,
        A.maktx
     
}
group by 
       A.taskid,
       A.maktx,
        A.matnr
