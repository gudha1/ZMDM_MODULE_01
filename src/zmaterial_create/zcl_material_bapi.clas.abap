CLASS zcl_material_bapi DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
    CLASS-METHODS :
      CreateMat
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
      RETURNING VALUE(StatusRetun) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MATERIAL_BAPI IMPLEMENTATION.


 METHOD CreateMat.

***************************************************************************** MAT START********************************************

DATA create_product TYPE TABLE FOR CREATE I_ProductTP_2.

DATA PATYCODE TYPE C LENGTH 10 .
DATA product TYPE I_Product-Product .
SELECT SINGLE * FROM ZMAT_BASICDATA_M_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(WA_BASICDATA) .

SELECT SINGLE * FROM ZMAT_SALESDATA_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(WA_SALES) .

SELECT SINGLE * FROM ZMAT_GENPLANT_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(WA_GeneralPlant) .

SELECT SINGLE * FROM ZMAT_MRPDATA_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(WA_MRPDATA) .

SELECT SINGLE * FROM ZMAT_PURDATA_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(WA_Purchase) .

SELECT SINGLE * FROM ZMAT_COSTINGDATA_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(WA_Costingdata) .

SELECT SINGLE * FROM zmat_wmdata_cds WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(WA_wmdata) .

SELECT SINGLE * FROM ZMAT_ACCOUNTDATA_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(ACCOUNTDATA) .

SELECT SINGLE * FROM ZMAT_QMDATA_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @taxkid INTO @DATA(QMDATA) .

SELECT * FROM zmat_qm_insp_se_CDS WITH PRIVILEGED ACCESS
WHERE Taskid = @taxkid INTO TABLE  @DATA(QMDATAINSP) .
**DATA: nr_number     TYPE cl_numberrange_runtime=>nr_number.
**    DATA nrrangenr  TYPE char2.
**
**    TRY.
**        CALL METHOD cl_numberrange_runtime=>number_get
**          EXPORTING
**            nr_range_nr = '01'
**            object      = 'MAT'
**            quantity    = 0000000001
**          IMPORTING
**            number      = nr_number.
**
**      CATCH cx_nr_object_not_found.
**      CATCH cx_number_ranges.
**    ENDTRY.
**    SHIFT nr_number LEFT DELETING LEADING '0'.
**    DATA: lv_nr TYPE C LENGTH 6.
**    lv_nr = |{ nr_number ALPHA = OUT }|.

if WA_BASICDATA-BaseUnitofMeasure = 'PC'.
WA_BASICDATA-BaseUnitofMeasure = 'ST'.
ENDIF.



SELECT SINGLE  NumberRangeForExtIDAssignment
FROM I_ProductType_2 WITH PRIVILEGED ACCESS as a WHERE ProductType = @WA_BASICDATA-Materialtype
INTO @DATA(NumberRangeForExtIDAssignment).

SELECT SINGLE MAX( product )
FROM I_product WITH PRIVILEGED ACCESS as a WHERE ProductType = @WA_BASICDATA-Materialtype
AND ( Product LIKE 'A1%' OR Product LIKE 'A2%'  OR Product LIKE 'A3%'   OR Product LIKE 'A4%'   OR Product LIKE 'A5%'   OR Product LIKE 'A6%'   OR Product LIKE 'A7%'
OR Product LIKE 'B1%' OR Product LIKE 'B2%' OR Product LIKE 'B3%' OR Product LIKE 'B4%' OR Product LIKE 'B5%'
OR Product LIKE 'B6%' OR Product LIKE 'B7%' OR Product LIKE 'B8%' OR Product LIKE 'B9%'  )
*AND Product <> 'A1000001'
*AND Product <> 'A6000001' AND Product <> 'A600000'
INTO @product.

DATA PRFIRT TYPE C LENGTH 18.
DATA PRFIRT1 TYPE C LENGTH 7.

IF product IS NOT INITIAL .
PRFIRT = product+1(18).
ENDIF.

DATA(MAT1) = |{ PRFIRT ALPHA = OUT }| .
MAT1 = MAT1 + 1 .
PRFIRT1  =  |{ MAT1 ALPHA = IN }|  .



IF product IS INITIAL .
PRFIRT = NumberRangeForExtIDAssignment.
ELSE.
PRFIRT = product+0(1).
ENDIF.


product = PRFIRT && PRFIRT1.

create_product = VALUE #( (
 %cid = 'product1'
 Product = product
 %control-Product = if_abap_behv=>mk-on
 ProductOldID = WA_BASICDATA-Oldmaterialnumber
 %control-ProductOldID = if_abap_behv=>mk-on

 ProductType = WA_BASICDATA-Materialtype
 %control-ProductType = if_abap_behv=>mk-on
 BaseUnit = WA_BASICDATA-BaseUnitofMeasure
 %control-BaseUnit = if_abap_behv=>mk-on
 IndustrySector =   'M'  "WA_BASICDATA-IndustrySector
 %control-IndustrySector = if_abap_behv=>mk-on
 ProductGroup = wa_basicdata-MaterialGroup
 %control-ProductGroup = if_abap_behv=>mk-on
 IsBatchManagementRequired = 'X'
 %control-IsBatchManagementRequired = if_abap_behv=>mk-on
 Division  = wa_basicdata-Division
 %control-Division = if_abap_behv=>mk-on
* IsMarkedForDeletion = wa_basicdata-    10000024
 CrossPlantStatus = wa_basicdata-CrossPlantMaterialStatus
* CrossPlantStatusValidityDate = wa_basicdata-
 ItemCategoryGroup  = wa_basicdata-Generalitemcategorygroup
 NetWeight   = wa_basicdata-Netweight
 GrossWeight  = wa_basicdata-Grossweight
 WeightUnit  = wa_basicdata-WeightUnit
 ProductVolume  = wa_basicdata-Volume
 AuthorizationGroup  = wa_basicdata-AuthorizationGroup
* ANPCode  = wa_basicdata-A
 SizeOrDimensionText  = wa_basicdata-Sizedimensions
 IndustryStandardName  = wa_basicdata-IndustryStandardDescrISO
 ProductStandardID = wa_basicdata-InternationalArticleNoEANUPC
 InternationalArticleNumberCat = wa_basicdata-CtgryInternationalArticlenoEAN
* ProductIsConfigurable = wa_basicdata-
 ExternalProductGroup = wa_basicdata-ExternalMaterialGroup
*      CrossPlantConfigurableProduct = wa_basicdata-CrossPlantMaterialStatus
*      SerialNoExplicitnessLevel = wa_basicdata-S
*      IsApprovedBatchRecordReqd,
*      HandlingIndicator,
*      WarehouseProductGroup,
*      WarehouseStorageCondition,
*      StandardHandlingUnitType,
*      SerialNumberProfile,
*      IsPilferable,
*      IsRelevantForHzdsSubstances,
*      QuarantinePeriod,
*      TimeUnitForQuarantinePeriod,
*      QualityInspectionGroup,
*      HandlingUnitType,
*      HasVariableTareWeight,
*      MaximumPackagingLength,
*      MaximumPackagingWidth,
*      MaximumPackagingHeight,
*      MaximumCapacity,
*      OvercapacityTolerance,
*      UnitForMaxPackagingDimensions,
*      BaseUnitSpecificProductLength,
*      BaseUnitSpecificProductWidth,
*      BaseUnitSpecificProductHeight,
*      ProductMeasurementUnit,
*      ArticleCategory,
*      IndustrySector,
*      LastChangeDateTime,
*      LastChangeTime,
*      DangerousGoodsIndProfile,
*      ProductDocumentChangeNumber,
*      ProductDocumentPageCount,
*      ProductDocumentPageNumber,
*      DocumentIsCreatedByCAD,
*      ProductionOrInspectionMemoTxt,
*      ProductionMemoPageFormat,
*      ProductIsHighlyViscous,
*      TransportIsInBulk,
       ProdEffctyParamValsAreAssigned = wa_basicdata-Asgecvtyprmtrvlusoveridechngno
*      ProdIsEnvironmentallyRelevant,
*      LaboratoryOrDesignOffice,
      PackagingProductGroup = wa_basicdata-MtrlGroupPackagingMaterials
*      PackingReferenceProduct,
      BasicProduct  = wa_basicdata-BasicMaterial
*      ProductDocumentNumber,
*      ProductDocumentVersion,
*      ProductDocumentType,
*      ProductDocumentPageFormat,
*      ProdChmlCmplncRelevanceCode,
*      DiscountInKindEligibility,
*      ProdCompetitorCustomerNumber,
*      ProductHierarchy,
      ProdAllocDetnProcedure = wa_basicdata-Productallocadeterminanproced
*      CountryOfOrigin,
*      RetailArticleBrand,
*      ProductValidStartDate
*      ContentUnit,
*      ProductNetContentQuantity,
*      ProductGrossContentQuantity,
*      ProductValidEndDate,
*      AssortmentListType,
*      TextilePartsIsWithAnimalOrigin,
*      ProductSeasonUsageCategory,
*      BillOfMaterialIsForEmpties,
*      ServiceAgreement,
*      ConsumptionValueCategory,
*      GoodsIssueUnit,
*      RegionOfOrigin,
*      ValuationClass,
*      SalesUnit,
*      ProductManufacturerNumber,
*      ManufacturerNumber,
*      ManufacturerPartProfile,
*      OwnInventoryManagedProduct,
 ) ).

MODIFY ENTITIES OF I_ProductTP_2
 ENTITY Product
  CREATE FROM create_product

 CREATE BY \_ProductDescription
 FIELDS ( Language ProductDescription ) WITH VALUE #( (
 %cid_ref = 'product1'
 Product = product
 %target = VALUE #(
 (
 %cid = 'desc1'
 Product = product
 Language = 'E'
 ProductDescription = WA_BASICDATA-MaterialDescription
 )
 )
 ) )
*************************************sales data *****************************
 CREATE BY \_ProductSales
        FIELDS ( TransportationGroup  ) WITH VALUE #( (
                                            %cid_ref = 'product1'
                                            Product = product
                                            %target = VALUE #( (
                                                %cid = 'sales'
                                                Product = product
*                                                SalesStatusValidityDate = '20250207'
*                                                SalesStatus = '01'
                                                TransportationGroup   =   WA_SALES-TransportationGroup
*      PackagingProductType,
*      AllowedPackagingWeightQty,
*      AllowedPackagingWeightQtyUnit,
*      AllowedPackagingVolumeQty,
*      AllowedPackagingVolumeQtyUnit,
*      MaximumLevelByVolumeInPercent,
*      ExcessWeightToleranceValue,
*      PackggProductIsClosedPackaging,
*      ProductStackingFactor,
*      ProdExcessVolumeToleranceValue,
*      ProductTaxClassification,
*      PricingReferenceProduct,
*      LoadingGroup,
*      StoreSaleEndDate,
*      DistributionCenterSaleEndDate,
*      StoreSaleStartDate,
*      DistrCenterSaleStartDate,
                                                ) )
                                            ) )
*************************************Product Procurement*****************************
 CREATE BY \_ProductProcurement FROM VALUE #( (
                                            Product = product
                                            %cid_ref = 'product1'
                                            %target = VALUE #(
                                                (
                                            %cid = 'productProqument'
                                            Product                        = product
                                            )
                                            )
                                            )
                                            )
*************************************_ProductQuality Management*****************************
 CREATE BY \_ProductQualityManagement FROM VALUE #( (
                                            %cid_ref = 'product1'
                                            Product = product
                                            %target = VALUE #(
                                                (
                                            %cid = 'ProductQualityManagement'
                                            Product                        = product
*                                            QltyMgmtInProcmtIsActive       = 'X'
                                            )
                                            )
                                            )
                                            )

 CREATE BY \_ProductSalesDelivery FROM VALUE #( (
                                            %cid_ref = 'product1'
                                            Product = product
                                            %target = VALUE #(
                                                (
                                            %cid = 'salesDel'
                                            Product                        = product
                                            ProductSalesOrg                = WA_SALES-SalesOrganization
                                            ProductDistributionChnl        = WA_SALES-DistributionChannel
                                            ItemCategoryGroup              = WA_SALES-Generalitemcategorygroup
                                            AccountDetnProductGroup        = WA_SALES-AccountAssignmentGroupforMater
*                                           CashDiscountIsDeductible,
                                           StoreSaleStartDate             = '20240319'
                                           StoreSaleEndDate               = '99990101'
                                           DistrCenterSaleStartDate       = '20240319'
                                           DistributionCenterSaleEndDate  = '99990101'
                                           ProductUnitGroup                = wa_sales-Salesunit
                                           StoreOrderMaxDelivQty          = '5'
                                           PriceFixingCategory            = '1'
                                           CompetitionPressureCategory    = 'A'

*                                            MinimumOrderQuantity
*                                            SupplyingPlant
*                                            PriceSpecificationProductGroup
*                                            DeliveryNoteProcMinDelivQty
*                                            ItemCategoryGroup
*                                            DeliveryQuantityUnit
*                                            DeliveryQuantity
*                                            ProductSalesStatus
*                                            ProductSalesStatusValidityDate,
*                                            SalesMeasureUnit,
*                                            IsMarkedForDeletion,
*                                            FirstSalesSpecProductGroup,
*                                            SecondSalesSpecProductGroup,
*                                            ThirdSalesSpecProductGroup,
*                                            FourthSalesSpecProductGroup,
*                                            FifthSalesSpecProductGroup,
*                                            LogisticsStatisticsGroup,
*                                            VolumeRebateGroup,
*                                            ProductCommissionGroup,
*                                            PricingReferenceProduct,
*                                            RoundingProfile,
*                                            VariableSalesUnitIsNotAllowed,
*                                            ProductHasAttributeID01,
*                                            ProductHasAttributeID02,
*                                            ProductHasAttributeID03,
*                                            ProductHasAttributeID04,
*                                            ProductHasAttributeID05,
*                                            ProductHasAttributeID06,
*                                            ProductHasAttributeID07,
*                                            ProductHasAttributeID08,
*                                            ProductHasAttributeID09,
*                                            ProductHasAttributeID10,
*                                            ProdIsEntlmntRlvt,
*                                            BaseUnit,
*                                            ProductHierarchy,
*                                            ProdExtAssortmentPriority,
*                                            AssortmentGrade,
*                                            StoreListingProcedure,
*                                            DistrCenterListingProcedure,
*                                            StoreListingStartDate,
*                                            StoreListingEndDate,
*                                            DistrCenterListingStartDate,
*                                            DistrCenterListingEndDate,
*                                            StoreSaleStartDate,
*                                            StoreSaleEndDate,
*                                            DistrCenterSaleStartDate,
*                                            DistributionCenterSaleEndDate,
*                                            ProductUnitGroup,
*                                            StoreOrderMaxDelivQty,
*                                            PriceFixingCategory,
*                                            CompetitionPressureCategory,
                                                )
                                                )
                                            ) )

  Entity ProductSalesDelivery
  CREATE BY \_ProdSalesDeliverySalesTax FROM VALUE #( (
                                            %cid_ref = 'salesDel'
                                            Product = product
                                            ProductSalesOrg = WA_SALES-SalesOrganization
                                            ProductDistributionChnl = WA_SALES-DistributionChannel
                                            %target = VALUE #( (
                                                %cid = 'salestax1'
                                                Product = product
                                                ProductSalesOrg = WA_SALES-SalesOrganization
                                                ProductDistributionChnl = WA_SALES-DistributionChannel
                                                Country = 'IN'
                                                ProductSalesTaxCategory = 'JOIG'
                                                ProductTaxClassification = '0'
                                            )
                                            (
                                                %cid = 'salestax2'
                                                Product = 'TEST_PRODUCT'
                                                ProductSalesOrg = WA_SALES-SalesOrganization
                                                ProductDistributionChnl = WA_SALES-DistributionChannel
                                                Country = 'IN'
                                                ProductSalesTaxCategory = 'JOSG'
                                                ProductTaxClassification = '0'
                                            )
                                            (
                                                %cid = 'salestax3'
                                                Product = 'TEST_PRODUCT'
                                                ProductSalesOrg = WA_SALES-SalesOrganization
                                                ProductDistributionChnl = WA_SALES-DistributionChannel
                                                Country = 'IN'
                                                ProductSalesTaxCategory = 'JOCG'
                                                ProductTaxClassification = '0'
                                            )
                                            (
                                                %cid = 'salestax4'
                                                Product = 'TEST_PRODUCT'
                                                ProductSalesOrg = WA_SALES-SalesOrganization
                                                ProductDistributionChnl = WA_SALES-DistributionChannel
                                                Country = 'IN'
                                                ProductSalesTaxCategory = 'JOUG'
                                                ProductTaxClassification = '0'
                                            )
                                            (
                                                %cid = 'salestax5'
                                                Product = 'TEST_PRODUCT'
                                                ProductSalesOrg = WA_SALES-SalesOrganization
                                                ProductDistributionChnl = WA_SALES-DistributionChannel
                                                Country = 'IN'
                                                ProductSalesTaxCategory = 'JCOS'
                                                ProductTaxClassification = '0'
                                            )
                                            (
                                                %cid = 'salestax6'
                                                Product = 'TEST_PRODUCT'
                                                ProductSalesOrg = WA_SALES-SalesOrganization
                                                ProductDistributionChnl = WA_SALES-DistributionChannel
                                                Country = 'IN'
                                                ProductSalesTaxCategory = 'JTC1'
                                                ProductTaxClassification = '0'
                                            )
                                            )
                                          ) )

**************************Plant Data *********************************************************
ENTITY Product
 CREATE BY \_ProductPlant AUTO FILL CID WITH VALUE #( (
                                                Product = product
                                                %cid_ref = 'product1'
                                                %target = VALUE #( (
                                                %cid    = 'product2'
                                                Product = product
                                                Plant   = WA_GeneralPlant-Plant
                                                ProfitCenter = '0000001005'  " WA_GeneralPlant-ProfitCenter
                                                IsBatchManagementRequired = WA_GeneralPlant-BatchMgmtRequirementIndicator

*      ProfileValidityStartDate,
*      FiscalYearVariant,
*      PeriodType    = WA_GeneralPlant-
*      ConfigurableProduct,
*      StockDeterminationGroup,
*      IsBatchManagementRequired,
*      SerialNumberProfile,
*      IsNegativeStockAllowed,
*      ProductCFOPCategory,
*      ProductIsExciseTaxRelevant,
*      GoodsIssueUnit,
*      DistrCntrDistributionProfile,
*      ProductIsCriticalPrt,
*      ProductLogisticsHandlingGroup,
*      ProductFreightGroup,
*      OriginalBatchReferenceProduct,
*      ProductMinControlTemperature,
*      ProductMaxControlTemperature,
*      ProductControlTemperatureUnit,
*      BaseUnit,
                                                ) )
                                            ) )

 ENTITY ProductPlant
  CREATE BY \_ProductPlantWorkScheduling FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantWorkSch'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant
*      ProductBaseQuantity,
*      UnlimitedOverDelivIsAllowed,
*      OverDeliveryTolerancePercent,
*      UnderDeliveryTolerancePercent,
*      ProductionInvtryManagedLoc,
*      ProductionOrderBatchCode,
*      ProdIsWithdrawnFrmProdnBin,
*      TransitionMatrixProductsGroup,
*      OrderChangeManagementProfile,
      ProductComponentBackflushCode = '1'
*      SetupAndTeardownTime,
*      ProductionSchedulingProfile,
*      TransitionTime,
*      ProcessingTimeInDays,
*      ProductionSupervisor,
*      ProductProductionQuantityUnit,
      BaseUnit   =  wa_generalplant-BaseUnitofMeasure
                                                )
                                                )
                                            ) )
       CREATE BY \_ProductPlantCosting FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantCosting'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant
                                                 TaskListGroup = '0'
*      IsCoProduct,
*      CostingLotSize,
*      TaskListGroup,
*      TaskListType,
*      CostingSpecialProcurementType,
*      SourceBOMAlternative,
*      ProductBOMUsage,
*      ProductIsCostingRelevant,
*      TaskListGroupCounter,
*      CostingProductionVersion,
*      IsFixedPriceCoProduct,
*      BaseUnit,
                                                )
                                                )
                                            ) )
          CREATE BY \_ProductPlantSupplyPlanning FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantSupPlan'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant

*      FixedLotSizeQuantity,
*      MaximumLotSizeQuantity,
*      MinimumLotSizeQuantity,
*      LotSizeRoundingQuantity,
      LotSizingProcedure                     = WA_MRPDATA-LotSizingProcedwithinMatePlan
      MRPType                                = wa_mrpdata-MRPType
      MRPResponsible                         = wa_mrpdata-MRPController
*      SafetyStockQuantity,
*      MinimumSafetyStockQuantity,
*      PlanningTimeFence,
*      ConsumptionValueCategory,
*      MaximumStockQuantity,
*      ReorderThresholdQuantity,
*      PlannedDeliveryDurationInDays,
*      SafetySupplyDurationInDays,
     PlanningStrategyGroup    =  wa_mrpdata-PlanningStrategyGroup
*      TotalReplenishmentLeadTime,
      ProcurementType                    = wa_mrpdata-ProcurementType
*      ProcurementSubType,
*      AssemblyScrapPercent,
      AvailabilityCheckType     = wa_mrpdata-CheckingGroupforAvailabiCheck
*      GoodsReceiptDuration,
*      PlanAndOrderDayDetermination,
*      RoundingProfile,
*      DfltStorageLocationExtProcmt,
*      MRPGroup,
*      LotSizeIndependentCosts,
*      RqmtQtyRcptTaktTmeInWrkgDays,
*      MRPPlanningCalendar,
*      RangeOfCvrgPrflCode,
*      ProductSafetyTimeMRPRelevance,
*      SafetyTimePeriodProfile,
*      DependentRqmtMRPRelevance,
*      ProductServiceLevelInPercent,
*      ProdInhProdnDurationInWorkDays,
*      MRPAvailabilityType,
*      CrossProjectProduct,
*      StorageCostsPercentageCode,
*      FollowUpProduct,
*      RepetitiveManufacturingIsAllwd,

      DependentRequirementsType   = wa_mrpdata-IndicaforRequirementsGrouping

*      ProductIsBulkComponent,
*      RepetitiveManufacturingProfile,
*      BackwardCnsmpnPeriodInWorkDays,
*      FwdConsumptionPeriodInWorkDays,
*      ProdRqmtsConsumptionMode,
*      ProdFcstRequirementsSplitCode,
*      EffectiveOutDate,
*      SchedulingFloatProfile,
*      ComponentScrapInPercent,
*      ProductDiscontinuationCode,
      ProductRequirementsGrouping  = wa_mrpdata-IndicaforRequirementsGrouping
*      ProductionInvtryManagedLoc,
      ProductComponentBackflushCode = wa_mrpdata-IndicatorBackflush
*      ProposedProductSupplyArea,
*      MRPSafetyStockMethod,
*      JITProdnConfProfile,
*      PlannedOrderActionControl,
      Currency              = wa_mrpdata-Curry
      BaseUnit              = wa_mrpdata-BaseUnitofMeasure
*      MRPProfile,
*      ProdnPlngAndControlCalendar,
*      GoodIssueProcessingDays,
*      ConsignmentControl,
*      ProductUnitGroup,
*      ATPCheckHorizonInDays,
*      ATPCheckHorizonFactoryCalendar,
                                                )
                                                )
                                            ) )
  CREATE BY \_ProductPlantPurchaseTax FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantPutax'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant
                                                 DepartureCountry = 'IN'
                                                )
                                                )
                                            ) )
   CREATE BY \_ProductPlantQualityManagement FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantQuM'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant
*                                                 ProdQltyManagementControlKey,
*      HasPostToInspectionStock,
*      InspLotDocumentationIsRequired,
*      QualityMgmtSystemForSupplier,
*      RecrrgInspIntervalTimeInDays,
*      ProductQualityCertificateType,
*      ProdQualityAuthorizationGroup,
                                                )
                                                )
                                            ) )

      CREATE BY \_ProductPlantInspTypeSetting FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                             %target = VALUE #( FOR any IN QMDATAINSP  INDEX INTO i  (  %cid   = |bp1_BANK_{ i }_001|
*                                            %target = VALUE #(
*                                                (
*                                                %cid = 'ProductPlantInspTypeSetting'
                                                Product = product
                                                Plant = WA_GeneralPlant-Plant
                                                InspectionLotType = ANY-Insptype
                                                InspLotIsTaskListRequired = SWITCH #( ANY-Active WHEN 'true' THEN 'X' ELSE '' )
                                                ProdInspTypeSettingIsActive = SWITCH #( ANY-Active WHEN 'true' THEN 'X' ELSE '' )
                                                InspQualityScoreProcedure = '06'
                                                )
                                                )
                                            ) )

*  CREATE BY \_ProductPlantProcurement FROM VALUE #( (
*                                            %cid_ref = 'product2'
*                                            Product = product
*                                            Plant = WA_GeneralPlant-Plant
*                                            %target = VALUE #(
*                                                (
*                                                 %cid  = 'PlantProcurement'
*                                                 Product = product
*                                                 Plant = WA_GeneralPlant-Plant
**      IsAutoPurOrdCreationAllowed,
**      IsSourceListRequired,
**      JustInTimeDeliveryScheduleCode,
*       PurchasingGroup               = WA_Purchase-PurchasingGroup
**      SourceOfSupplyCategory,
**      PurgIsAcrossPurchasingGroup,
*                                                )
*                                                )
*                                            ) )
    CREATE BY \_ProductPlantSales FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantSales1'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant
                                                 LoadingGroup = WA_SALES-LoadingGroup
*      CapPlanningQuantityInBaseUoM,
*      ProdShipgProcgDurationInDays,
*      WrkCentersShipgSetupTimeInDays,
*      ReplacementPartType,
      AvailabilityCheckType  = WA_SALES-CheckingGroupforAvailabilCheck
      BaseUnit         = WA_SALES-BaseUnitofMeasure
                                                )
                                                )
                                            ) )
   CREATE BY \_ProductPlantForecast FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantIntlForecast'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant
*                                                 ConsumptionRefUsageEndDate,
*      CnsmpnQuantityMultiplierValue,
*      ConsumptionReferenceProduct,
*      ConsumptionReferencePlant,
*      @Semantics.booleanIndicator: true
*      CorrectionFactorIsRequired,
*      @Semantics.booleanIndicator: true
*      ForecastModelIsReset,
                                                )
                                                )
                                            ) )
  CREATE BY \_ProdPlantInternationalTrade FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                 %cid  = 'PlantIntlTrade'
                                                 Product = product
                                                 Plant = WA_GeneralPlant-Plant
                                                 ConsumptionTaxCtrlCode = WA_Purchase-Cntrlcdfrcnsumptntaxsnfrigntrd
                                                )
                                                )
                                            ) )

   CREATE BY \_ProductPlantStorage FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant =  WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                %cid = 'ProdStorage'
                                                Product = product
                                                Plant = WA_GeneralPlant-Plant
*                                                 PhysInventoryForCycleCounting,
*      MaximumStoragePeriod,
*      ProdMaximumStoragePeriodUnit,
*      CycleCountingIndicatorIsFixed,
*      ProvisioningServiceLevel,
                                                )
                                                )
                                            ) )

  CREATE BY \_ProductPlantStorageLocation FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant =  WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                %cid = 'ProdStorLoc'
                                                Product = product
                                                Plant = WA_GeneralPlant-Plant
                                                StorageLocation = WA_GeneralPlant-Storagelocation
                                                )
                                                )
                                            ) )
   CREATE BY \_ProductPlantMRP FROM VALUE #( (
                                            %cid_ref = 'product2'
                                            Product = product
                                            Plant = WA_GeneralPlant-Plant
                                            %target = VALUE #(
                                                (
                                                %cid = 'ProdMRPPLANT'
                                                Product = product
                                                Plant = WA_GeneralPlant-Plant
*                                                MRPArea = wa_mrpdata-
                                                 MRPType = wa_mrpdata-MRPType
                                                 MRPResponsible   = wa_mrpdata-MRPController
                                                 MRPGroup   = wa_mrpdata-MRPGroup
*      ReorderThresholdQuantity,
*      PlanAndOrderDayDetermination,
*      PlanningTimeFence,
*      LotSizingProcedure,
*      RoundingProfile,
*      LotSizeRoundingQuantity,
*      MinimumLotSizeQuantity,
*      MaximumLotSizeQuantity,
*      MaximumStockQuantity,
*      AssemblyScrapPercent,
*      ProcurementSubType,
*      ProductionInvtryManagedLoc,
*      DfltStorageLocationExtProcmt,
*      MRPPlanningCalendar,
*      SafetyStockQuantity,
*      RangeOfCvrgPrflCode,
*      SafetySupplyDurationInDays,
*      FixedLotSizeQuantity,
*      LotSizeIndependentCosts,
*      StorageCostsPercentageCode,
*      ProductServiceLevelInPercent,
*      IsMarkedForDeletion,
*      SafetyTimePeriodProfile,
*      DependentRqmtMRPRelevance,
*      ProductSafetyTimeMRPRelevance,
*      PlannedDeliveryDurationInDays,
*      IsPlannedDeliveryTime,
*      RqmtQtyRcptTaktTmeInWrkgDays,
*      MRPSafetyStockMethod,
*      Currency,
*      BaseUnit,
                                                )
                                                )
                                            ) )

*    CREATE BY \_ProductPlantPlanning FROM VALUE #( (
*                                            %cid_ref = 'product2'
*                                            Product = product
*                                            Plant = WA_GeneralPlant-Plant
*                                            %target = VALUE #(
*                                            (
*                                                %cid = 'ProductPlantPlanning'
*                                                Product = product
*                                                Plant = WA_GeneralPlant-Plant
*                                                )
*                                                )
*                                            ) )
ENTITY Product
    CREATE BY \_ProductStorage FROM VALUE #( (
                                            %cid_ref = 'product1'
                                            Product = product
                                            %target = VALUE #(
                                            (
                                                %cid = 'ProductStorage'
                                                Product = product
*                                                StorageConditions,
*      ProdTemperatureConditionCode,
*      HazardousProduct,
*      NmbrOfGROrGISlipsToPrintQty,
*      LabelType,
*      LabelForm,
*      MinRemainingShelfLife,
*      ProductExpirationDateType,
*      StorageBinInstruction,
*      ShelfLifeExpirationDatePeriod,
*      ShelfLifeExprtnDateRndngRule,
*      TotalShelfLifeStoragePercent,
*      TotalShelfLife,
      BaseUnit = WA_GeneralPlant-BaseUnitofMeasure
                                                )
                                                )
                                            ) )
*ENTITY Product
*    CREATE BY \_ProductEWMWarehouse FROM VALUE #( (
*                                            %cid_ref = 'product2'
*                                            Product = product
*                                            %target = VALUE #(
*                                            (
*                                                %cid = 'ProductStorage'
*                                                Product = product
*                                                EWMWarehouse = WA_wmdata-
*                                                EntitledToDisposeParty
*                                                ProductInternalUUID
*                                                SupplyChainUnitUUID
*                                                EWMPartyEntitledToDisposeUUID
*                                                BaseUnit
*                                                EWMProductProcessBlockProfile
*                                                EWMProcessTypeControlCode
*                                                EWMProductLoadCategory
*                                                EWMStggAreaDeterminationGroup
*                                                EWMIsCnsmpnRlvtForValAddedSrvc
*                                                RequiredMinShelfLife
*                                                EWMPtwyControlStrategy
*                                                EWMStorageSectionMethod
*                                                EWMStorageBinType
*                                                EWMBulkStorageMethod
*                                                EWMStockRemovalControlStrategy
*                                                EWMStockDeterminationGroup
*                                                EWMProdTwoStepPickingRelevant
*                                                EWMSltgRequirementQuantity
*                                                EWMSltgNumberOfSalesOrderItems
*                                                EWMSltgRecmddStorageQuantity
*                                                EWMSlottingWeightSizeCode
*                                                EWMSlottingVolumeSizeCode
*                                                EWMSlottingLengthSizeCode
*                                                EWMSlottingWidthSizeCode
*                                                EWMSlottingHeightSizeCode
*                                                EWMPhysInventoryCountingCycle
*                                                EWMProdBackflushWthdrwlMethod
*                                                EWMKitQuantityCorrelation
*                                                EWMQuantityAdjustmentProfile
*                                                EWMMrchdsDistrQtyClassfctn
*                                                EWMPreferredUnit
*                                                EWMQualityInspectionGroup
*                                                )
*                                                )
*                                            ) )

**************************************Product Valuation*****************************
ENTITY Product
CREATE BY \_ProductValuation
FIELDS ( ValuationArea ValuationType )
       WITH VALUE #( (
                                            %cid_ref = 'product1'
                                            Product = product
                                            %target = VALUE #(
                                                (
                                            %cid = 'Valuation'
                                            Product = product
                                            ValuationArea  =  WA_GeneralPlant-Plant
*                                            ValuationType  = WA_GeneralPlant-
                                            ValuationClass = ACCOUNTDATA-ValuationClass
                                            PriceDeterminationControl = '2' "ACCOUNTDATA-Pricecontrolindicator
                                            StandardPrice = ACCOUNTDATA-StandardPricewithPlusMinusSign
                                            ProductPriceUnitQuantity = ACCOUNTDATA-Priceunit
                                            InventoryValuationProcedure = ACCOUNTDATA-Pricecontrolindicator
                                            MovingAveragePrice =  ACCOUNTDATA-MvgAvgPricePeriodicUnitPrice
                                            ValuationCategory =  ACCOUNTDATA-ValuationCategory
*                                            ProductUsageType =
*                                            ProductOriginType =
*                                            IsProducedInhouse =
*                                            IsMarkedForDeletion =
*                                            ValuationClassSalesOrderStock =
*                                            ProjectStockValuationClass =
                                            Currency =  ACCOUNTDATA-CURRY
*                                            BaseUnit =
*                                            ValuationMarginPercent =

                                                )
                                                )
                                            ) )
   ENTITY ProductValuation
  create by \_ProductValuationAccounting FROM VALUE #( (
                                            %cid_ref = 'Valuation'
                                            Product = product
                                            ValuationArea =  WA_GeneralPlant-Plant
                                            %target = VALUE #( (
                                                %cid = 'ValAcct'
                                                Product = product
                                                ValuationArea =  WA_GeneralPlant-Plant
*                                                FuturePrice = 20
*                                                FuturePriceValidityStartDate = '20211025'
                                            ) )
                                          ) )
  CREATE BY \_productvaluationledgeraccount
  FIELDS ( ledger currencyrole )
  WITH VALUE #( (
                   %cid_ref = 'Valuation'
                   product = product
                   valuationarea = WA_GeneralPlant-Plant
                   valuationtype = ''
                   %target = VALUE #(
                                      (
                                        %cid = 'Valuationled'
                                        product = product
                                        valuationarea = WA_GeneralPlant-Plant
                                        valuationtype = ''
                                        ledger = '0L'
*                                        currencyrole = '10'
                                        productpriceunitquantity = '1'
                                        currency = 'INR'
                                        StandardPrice =  ACCOUNTDATA-StandardPricewithPlusMinusSign

                                      )

                                                )
                              )
                            )
  CREATE BY \_productvaluationledgerprices
  FIELDS ( ledger currencyrole )
  WITH VALUE #( (
                   %cid_ref = 'Valuation'
                   product = product
                   valuationarea = WA_GeneralPlant-Plant
                   valuationtype = ''
                   %target = VALUE #(
                                      (
                                        %cid = 'Valuationledpric'
                                        product = product
                                        valuationarea = WA_GeneralPlant-Plant
                                        valuationtype = ''
                                        ledger = '0L'
*                                        currencyrole = '10'
                                        productpriceunitquantity = '1'
                                        currency = 'INR'
*                                        futurepricevaliditystartdate = sy-datum
                                      )

                                                )
                              )
                            )
  CREATE BY \_productvaluationcosting FROM VALUE #( (
                                            %cid_ref = 'Valuation'
                                            product = product
                                            valuationarea = WA_GeneralPlant-Plant
                                            %target = VALUE #( (
                                                    %cid = 'ValCost'
                                                    product = product
                                                    valuationarea = WA_GeneralPlant-Plant
                                                    productiscostedwithqtystruc = 'X'
                                                    Currency = 'INR'
                                                ) )
                                          ) )
*       CREATE BY \_productvaluationcosting FROM VALUE #( (
*                                            %cid_ref = 'Valuationledpric'
*                                            product = product
*                                            valuationarea = WA_GeneralPlant-Plant
*                                            %target = VALUE #( (
*                                                    %cid = 'ValuationCost'
*                                                    product = product
*                                                    valuationarea = WA_GeneralPlant-Plant
**                                                    productiscostedwithqtystruc = 'X'
*                                                    Currency = 'INR'
*                                                ) )
*                                          ) )
 MAPPED DATA(mapped)
 REPORTED DATA(reported)
 FAILED DATA(failed).

 COMMIT ENTITIES BEGIN
 RESPONSE OF I_ProductTP_2
 FAILED DATA(failed_commit)
 REPORTED DATA(reported_commit).

 COMMIT ENTITIES END .
DATA product_t TYPE STRING.
DATA ERROR TYPE STRING.
 If failed_commit  is INITIAL  .

 loop at  mapped-product ASSIGNING FIELD-SYMBOL(<fs1>)    .
 product_t   = <fs1>-Product   .
* response->set_text( |{ product_t }| )  .
 endloop .
IF product_t IS INITIAL .
 ERROR = 'E'.
IF reported-product IS NOT INITIAL .
  product_t = reported-product[ 1 ]-%msg->if_message~get_text( ).
ENDIF.
IF reported_commit-product IS NOT INITIAL .
   product_t = reported_commit-product[ 1 ]-%msg->if_message~get_text( ).
 ENDIF.
ENDIF.

 ELSE.
  ERROR = 'E'.
IF reported-product IS NOT INITIAL .
  product_t = reported-product[ 1 ]-%msg->if_message~get_text( ).
ENDIF.
IF reported_commit-product IS NOT INITIAL .
   product_t = reported_commit-product[ 1 ]-%msg->if_message~get_text( ).
 ENDIF.
 endif .

*  product_t = reported-productplantworkscheduling[ 1 ]-%msg->if_message~get_text( ).
*  product_t = reported-productplantcosting[ 1 ]-%msg->if_message~get_text( ).
*  product_t = reported-productplantmrp[ 1 ]-%msg->if_message~get_text( ).
*  product_t = reported-productvaluationledgeraccount[ 1 ]-%msg->if_message~get_text( ).
StatusRetun = ERROR && product_t.
******************************************************************************GREY MAT END********************************************
 ENDMETHOD.


METHOD if_oo_adt_classrun~main.

DATA(REU) =  createmat( taxkid = '1000024' ).


ENDMETHOD.
ENDCLASS.
