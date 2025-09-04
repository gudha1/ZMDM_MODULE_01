CLASS zcl_mdm_module_http DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES : BEGIN OF Accounting,

              Accounting1TaskID           TYPE string,
              Accounting1Material         TYPE string,
              Accounting1Description      TYPE string,
              Accounting1Plant            TYPE string,
              Accounting1Division         TYPE string,
              Accounting1Valuationclass   TYPE string,
              Accounting1VCSaleOrdStk     TYPE string,
              Accouting1projectstock      TYPE string,
              Accouting1baseunit          TYPE string,
              Accouting1valuationccat     TYPE string,
              Accounting1MLAct            TYPE string,
              Accounting1pricedeterm      TYPE string,
              Accounting1CurrentKey       TYPE string,
              Accounting1StandardPrice    TYPE string,
              Accounting1PerUnitPrice     TYPE string,
              Accounting1PriceUnit        TYPE string,
              Accounting1pricecontrol     TYPE string,
              Account1MovingPrice         TYPE string,
              Accounting2TaskID           TYPE string,
              Accounting2Material         TYPE string,
              Accounting2description      TYPE string,
              Accounting2Plant            TYPE string,
              Accounting2TaxPrice1        TYPE string,
              Accounting2TaxPrice2        TYPE string,
              Accounting2TaxPrice3        TYPE string,
              Accounting2DevaluationInd   TYPE string,
              Accounting2CommericalPrice1 TYPE string,
              Accounting2CommericalPrice2 TYPE string,
              Accounting2CommericalPrice3 TYPE string,
              Accounting2PriceUnit        TYPE string,
              Accounting2LIFO             TYPE string,
              Accounting2LIFOPool         TYPE string,
            END OF Accounting.
    TYPES : BEGIN OF  BasicData,
              BasicDataTaskID1               TYPE string,
              BasicData1Material             TYPE string,
              BasicData1Description          TYPE string,
              BasicData1UOm                  TYPE string,
              GeneralDataOldMaterialNumber   TYPE string,
              BasicData1Division             TYPE string,
              BasicData1ProductAllocation    TYPE string,
              BasicData1XPlanMatStatus       TYPE string,
              BasicData1AssignEffectVals     TYPE string,
              BasicData1materialgroup        TYPE string,
              BasicDataExtMatlGroup          TYPE string,
              BasicData1labOffice            TYPE string,
              BasicData1ValidFrom            TYPE string,
              BasicData1GenItemCatGroup      TYPE string,
              BasicData1AuthorizationGroup   TYPE string,
              BasicData1GrossWeight          TYPE string,
              BasicDataNetWeight             TYPE string,
              BasicData1Volume               TYPE string,
              BasicDataSizeDimensions        TYPE string,
              BasicData1EANUPC               TYPE string,
              BasicData1DimensionsWeightunit TYPE string,
              BasicData1DimensionsVolumeunit TYPE string,
              BasicData1DimensionEanCategory TYPE string,
              BasicData1MatlGrpPackMat       TYPE string,
              BasicData1Language             TYPE string,
              BasicData2TaskId1              TYPE string,
              BasicData2Material             TYPE string,
              BasiData2Description           TYPE string,
              BasicData2IndStdDescription    TYPE string,
              BasicData2BasicMaterial        TYPE string,
              BasiData2MsBookPartNo          TYPE string,
              BasicData2Medium               TYPE string,
            END OF BasicData.

    TYPES:BEGIN OF Costing,
            Costing1TaskID                 TYPE string,
            Costing1Material               TYPE string,
            Costing1description            TYPE string,
            Costing1Plant                  TYPE string,
            Costing1UOM                    TYPE string,
            Costing1DoNotCost              TYPE string,
            Costing1WithQtyStructure       TYPE string,
            Costing1MaterialOrigin         TYPE string,
            Costing1origingroup            TYPE string,
            Costing1overheadgroup          TYPE string,
            Costing1VarianceKey            TYPE string,
            Costing1profitcenter           TYPE string,
            Costing1plantspmatl            TYPE string,
            Costing1ValidForm              TYPE string,
            Costing1AlternativeBOM         TYPE string,
            Costing1Group                  TYPE string,
            Costing1tasklisttype           TYPE string,
            Costing1SpecProcurem           TYPE string,
            Costing1CoProduct              TYPE string,
            Costing1FxdPrice               TYPE string,
            Costing1BomUsage               TYPE string,
            Costing1GroupCounter           TYPE string,
            Costing1CostingLotSize         TYPE string,
            Costing1ProductionVersion      TYPE string,
            Costing1VersionIndicator       TYPE string,
            Costing2TaskID                 TYPE string,
            Costing2Material               TYPE string,
            Costing2description            TYPE string,
            Costing2Plant                  TYPE string,
            Costing2FuturePeriod           TYPE string,
            Costing2FuturePlannedPrice     TYPE string,
            Costing2FutureStandardPrice    TYPE string,
            Costing2CurrentPeriod          TYPE string,
            Costing2CurrentPlannedPrice    TYPE string,
            Costing2StandardPrice          TYPE string,
            Costing2PreviousPeriod         TYPE string,
            Costing2PreviousPlannedPrice   TYPE string,
            Costing2PreviousStandardSPrice TYPE string,
            Costing2PlannedPrice1          TYPE string,
            Costing2PlannedPrice2          TYPE string,
            Costing2PlannedPrice3          TYPE string,
            Costing2PlannedPriceDate1      TYPE string,
            Costing2PlannedPriceDate2      TYPE string,
            Costing2PlannedPriceDate3      TYPE string,
            Costing2ValuationData          TYPE string,
            Costing2VCSalesOrderStk        TYPE string,
            Costing2pricecontrol           TYPE string,
            Costing2PriceUnit              TYPE string,
            Costing2MovingPrice            TYPE string,
            Costing2valuationccat          TYPE string,
            Costing2ProjStkVal             TYPE string,
            Costing2Currency               TYPE string,
            CostingStandardPrice           TYPE string,
          END OF Costing.
    TYPES: BEGIN OF GeneralPlant,
             GeneralPlant1TaskID           TYPE string,
             GeneralPlant1Material         TYPE string,
             GeneralPlant1Description      TYPE string,
             GeneralPlant1DataPlant        TYPE string,
             GeneralPlant1Storagelocation  TYPE string,
             GeneralPlant1UOM              TYPE string,
             GeneralPlantStorageBin        TYPE string,
             GeneralPlant1TempCond         TYPE string,
             GeneralPlant1Container        TYPE string,
             GeneralPlantCCPhysInv         TYPE string,
             GeneralPlant1labeltype        TYPE string,
             GeneralPlant1BatchManagement  TYPE string,
             GeneralPlant1BatchManagPlant  TYPE string,
             GeneralPlant1CCFixed          TYPE string,
             GeneralPlant1ApprBatch        TYPE string,
             GeneralPlant1ForecastModel    TYPE string,
             GeneralPlant1labfrom          TYPE string,
             GeneralPlant1Unitissue        TYPE string,
             GeneralPlant1PickingArea      TYPE string,
             GeneralPlant1storagecondition TYPE string,
             GeneralPlant1HazMaterial      TYPE string,
             GeneralPlant1NumberOfGR       TYPE string,
             GeneralPlant1MaxStorage       TYPE string,
             GeneralPlant1MinRem           TYPE string,
             GeneralPlant1periodinforsled  TYPE string,
             GeneralPlant1StoragePercen    TYPE string,
             GeneralPlant1TimeUnit         TYPE string,
             GeneralPlant1TotalShelf       TYPE string,
             GeneralPlant1Rounding         TYPE string,
             GeneralPlant1ExpirationDate   TYPE string,
             GeneralPlant1Maturation       TYPE string,
             GeneralPlant1ReqMax           TYPE string,
             GeneralPlant1Segmantations    TYPE string,
             GeneralPlantSortStk           TYPE string,
             GeneralPlant1SegmentSpeci     TYPE string,
             GeneralPlant1DefultStock      TYPE string,
             GeneralPlant2TaskID           TYPE string,
             GeneralPlant2Material         TYPE string,
             GeneralPlant2Description      TYPE string,
             GeneralPlant2Plant            TYPE string,
             GeneralPlant2Storagelocation  TYPE string,
             GeneralPlant2UOM              TYPE string,
             GeneralPlant2GrossWeight      TYPE string,
             GeneralPlant2Volume           TYPE string,
             GeneralPlant2WeightUnit       TYPE string,
             GeneralData2VolumeUnit        TYPE string,
             GeneralPlant2NegStocks        TYPE string,
             GeneralPlant2SerialNo         TYPE string,
             generalplant2profitcenter     TYPE string,
             GeneralPlant2IUIDRelevant     TYPE string,
             GeneralPlant2IuidType         TYPE string,
             GeneralPlant2SecLevel         TYPE string,
             GeneralPlant2LogHandling      TYPE string,
             GeneralPlant2DistrProfile     TYPE string,
             GeneralPlant2stockdeterm      TYPE string,
             GeneralPlant2ExternalAllo     TYPE string,
           END OF GeneralPlant.
    TYPES : BEGIN OF mrp,
              MRP1TaskID                    TYPE string,
              MRP1Material                  TYPE string,
              MRP1Descrition                TYPE string,
              MRP1Plant                     TYPE string,
              mrp1uom                       TYPE string,
              MRP1PurchasingGroup           TYPE string,
              MRP1PlantSpMatlStatus         TYPE string,
              MRP1MRPGroup                  TYPE string,
              MRP1Abcindicator              TYPE string,
              MRP1ValidFrom                 TYPE string,
              mrp1mrptype                   TYPE string,
              MRP1ReorderPoint              TYPE string,
              MRP1PlanningCycle             TYPE string,
              MRP1PlanningTime              TYPE string,
              MRP1MRPController             TYPE string,
              MRP1LotSizingProcedure        TYPE string,
              MRP1MinimumLotSize            TYPE string,
              MRP1FixedLotSize              TYPE string,
              MRP1LSIndependent             TYPE string,
              MRP1AssemblyScrap             TYPE string,
              MRP1RoundingProfile           TYPE string,
              MRP1MaximumLotSize            TYPE string,
              MRP1MaximumStocklevel         TYPE string,
              MRP1StorageCosts              TYPE string,
              MRP1TaktTime                  TYPE string,
              MRP1RoundingValue             TYPE string,
              MRP2TaskID                    TYPE string,
              MRP2Material                  TYPE string,
              MRP2Description               TYPE string,
              MRP2Plant                     TYPE string,
              MRP2ProcurmentType            TYPE string,
              MRP2SpecialProcurement        TYPE string,
              MRP2Backflush                 TYPE string,
              MRP2JITDelivery               TYPE string,
              MRP2BulkMaterial              TYPE string,
              MRP2BatchEntry                TYPE string,
              MRP2ProdStorLocation          TYPE string,
              MRP2ProposedSupply            TYPE string,
              MRP2StorageLocfor             TYPE string,
              MRP2StockDetGrp               TYPE string,
              MRP2GrProcessingTime          TYPE string,
              MRP2SchedMarginKEy            TYPE string,
              MRP2PlanningDelivTime         TYPE string,
              MRP2PlanningCalendar          TYPE string,
              MRP2SafetyStock               TYPE string,
              MRP2MinSafetystock            TYPE string,
              MRP2SafetyTimeInd             TYPE string,
              MRP2STimePeriod               TYPE string,
              MRP2ServiceLEvel              TYPE string,
              MRP2CoverageProfile           TYPE string,
              MRP2SafetyTime                TYPE string,
              MRP3TaskID                    TYPE string,
              MRP3Material                  TYPE string,
              MRP3description               TYPE string,
              MRP3Plant                     TYPE string,
              MRP3PerioIindicator           TYPE string,
              MRP3SplittingIndicator        TYPE string,
              MRP3FiscalYearVariant         TYPE string,
              MRP3StrategyGroup             TYPE string,
              MRP3ConsumptionMode           TYPE string,
              MRP3FwdConsumptionPer         TYPE string,
              MRP3PlanningMaterial          TYPE string,
              MRP3PlanningConvFactor        TYPE string,
              MRP3BwdConsumptionPer         TYPE string,
              MRP3MixedMRP                  TYPE string,
              MRP3PlanningPlant             TYPE string,
              MRP3PlanningMatlBUnit         TYPE string,
              MRP3availability              TYPE string,
              MRP3TotalReplLead             TYPE string,
              MRP3CrossProject              TYPE string,
              MRP3Configurable              TYPE string,
              MRP3Varient                   TYPE string,
              MRP3PlanningVarient           TYPE string,
              MRP4TaskID                    TYPE string,
              MRP4Material                  TYPE string,
              MRP4description               TYPE string,
              MRP4Plant                     TYPE string,
              MRP4Storagelocation           TYPE string,
              MRP4IndividualColl            TYPE string,
              MRP4VersionIndicator          TYPE string,
              MRP4ComponentScrap            TYPE string,
              MRP4RequirementsGroup         TYPE string,
              MRP4MrpDepRequirements        TYPE string,
              MRP4DiscontinuedInd           TYPE string,
              MRP4EffOut                    TYPE string,
              MRP4FollowUpMatl              TYPE string,
              MRP4RepetManufac              TYPE string,
              MRP4RemProfile                TYPE string,
              MRP4ActionControl             TYPE string,
              ForecastingTaskID             TYPE string,
              ForecastingMaterial           TYPE string,
              ForecastingDescription        TYPE string,
              ForecastingPlant              TYPE string,
              ForecastingUOM                TYPE string,
              ForecastingLastForecast       TYPE string,
              ForecastingRefMatlConsumption TYPE string,
              ForecastingDateTo             TYPE string,
              ForeCastingForecastModel      TYPE string,
              ForecastingPeriodIndicator    TYPE string,
              ForecastingFiscalYear         TYPE string,
              ForecastingRefPlantConsu      TYPE string,
              ForecastingMultiplier         TYPE string,
              ForecastingHistPeriod         TYPE string,
              ForecastingInitializationpds  TYPE string,
              ForecastingPeriodsPer         TYPE string,
              ForecastingForecastPeriods    TYPE string,
              ForecastingFixedPeriods       TYPE string,
              ForecastingInitialization     TYPE string,
              ForecastingModelSel           TYPE string,
              ForecastingOptimization       TYPE string,
              ForecastingAlphaFactor        TYPE string,
              ForecastingGammaFactor        TYPE string,
              ForecastingResetAuto          TYPE string,
              ForecastingParamOptimi        TYPE string,
              ForecastingTracking           TYPE string,
              ForecastingSelectionProce     TYPE string,
              ForecastingWeighting          TYPE string,
              ForecastingBetaFactor         TYPE string,
              ForecastingDeltaFactor        TYPE string,
              ForecastingCorrectionFact     TYPE string,
              workschedulingtaskid          TYPE string,
              workschedulingMaterial        TYPE string,
              workschedulingDescription     TYPE string,
              workschedulingPlant           TYPE string,
              WorkscBaseunit                TYPE string,
              workProductionunit            TYPE string,
              workprodnsupervisor           TYPE string,
              workprodschedprofile          TYPE string,
              workserialno                  TYPE string,
              workseriallevel               TYPE string,
              workcriticalpart              TYPE string,
              workInspstock                 TYPE string,
              workUnitofissue               TYPE string,
              workmaterialstatus            TYPE string,
              workvalidfrom                 TYPE string,
              workLocation                  TYPE string,
              workmatgrouping               TYPE string,
              workoverallprofile            TYPE string,
              workbatchentry                TYPE string,
              workapprbatchrecreq           TYPE string,
              Workbatchmanagemnt            TYPE string,
              Workbatchmanagemntplant       TYPE string,
              workunderdelivtol             TYPE string,
              workOverdelivtol              TYPE string,
              WorkUnlimited                 TYPE string,
              worksetup                     TYPE string,
              workpreocessingtime           TYPE string,
              workInteroperation            TYPE string,
              workbasequentity              TYPE string,

            END OF mrp.
    TYPES : BEGIN OF Purchase,
              PurchasingTaskID               TYPE string,
              PurchasinghMaterial            TYPE string,
              PurchasingDesription           TYPE string,
              PurchasingPlant                TYPE string,
              PurchasingUOM                  TYPE string,
              PurchasingPurchasingGroup      TYPE string,
              PurchasingPlantSpMatlStatus    TYPE string,
              PurchasingTaxInd               TYPE string,
              PurchasingMaterialFreight      TYPE string,
              PurchasingBatchManagement      TYPE string,
              PurchasingBatchManagPlant      TYPE string,
              PurchasingOrderunit            TYPE string,
              PurchasinghMaterialGroup       TYPE string,
              PurchasingValidFrom            TYPE string,
              PurchasingQualFreegood         TYPE string,
              PurchasingAutoPO               TYPE string,
              PurchasingPurchaseValueKey     TYPE string,
              PurchasingReminder1            TYPE string,
              PurchasingReminder2            TYPE string,
              PurchasingReminder3            TYPE string,
              PurchasingStdValueDelive       TYPE string,
              PurchasingUnltdOverDelivery    TYPE string,
              PurchasingAcknowledgement      TYPE string,
              PurchasingShippingInst         TYPE string,
              PurchasingUnderdelTole         TYPE string,
              PurchasingOverdelTol           TYPE string,
              PurchasingMinDelQty            TYPE string,
              InternationalImportTaskID      TYPE string,
              InternationalImportMaterial    TYPE string,
              InternationalImportDecription  TYPE string,
              InternationalImportPlant       TYPE string,
              InternationImportIntraGroup    TYPE string,
              InternationalImportCASNumber   TYPE string,
              InternationalImportProdComNo   TYPE string,
              InternationalImportControlCode TYPE string,
              InternationalImportCountry     TYPE string,
              InternationalRegionofOrigin    TYPE string,
              PurchaseOrderTaskID            TYPE string,
              PurchaseOrderTextMaterial      TYPE string,
              PurchaseordertextDescription   TYPE string,
            END OF Purchase.
    TYPES : BEGIN OF Quality,
              QualityTaskID                TYPE string,
              QualityMaterial              TYPE string,
              QualityDescription           TYPE string,
              QualityPlant                 TYPE string,
              QualityUOM                   TYPE string,
              QualityUnitofissue           TYPE string,
              QualityQMMaterialAuth        TYPE string,
              QualityGrProcessingTime      TYPE string,
              QualityCatalogProfile        TYPE string,
              Qualityplantspmatl           TYPE string,
              QualityInspectionInterval    TYPE string,
              QualityValidFrom             TYPE string,
              QualityInspectionSetup       TYPE string,
              QualityPostosInspectionStock TYPE string,
              QualityDocumentationRequired TYPE string,
              QualityQMinProcurActive      TYPE string,
              QualityQMControlKey          TYPE string,
              QualityCertificateType       TYPE string,
              QualityTargetQMSystem        TYPE string,
              QualityTechDeliveryTerms     TYPE string,
            END OF Quality.
    TYPES :BEGIN OF Sales,
             SalesOrg1TaskID                TYPE string,
             SalesOrg1Material              TYPE string,
             SalesOrg1Description           TYPE string,
             SalesOrg1Salesorganization     TYPE string,
             SalesOrg1DistributionChannel   TYPE string,
             SalesOrg1UOM                   TYPE string,
             SalesOrg1SalesUnit             TYPE string,
             SalesOrg1UnitOfMeasureGrp      TYPE string,
             SalesOrg1XDistrChainStatus     TYPE string,
             SalesOrg1DchainSpeStatus       TYPE string,
             SalesOrg1DeliveringPlant       TYPE string,
             SalesOrg1MaterialGroup         TYPE string,
             SalesOrg1CashDiscount          TYPE string,
             SalesOrg1Division              TYPE string,
             SalesOrg1SalesUnitNot          TYPE string,
             SalesOrg1ValidFrom             TYPE string,
             SalesOrg1ValidFrom1            TYPE string,
             SalesOrg2TaskID                TYPE string,
             SalesOrg2Material              TYPE string,
             SalesOrg2Description           TYPE string,
             SalesOrg2SalesOrganization     TYPE string,
             SalesOrg2DistributionChannel   TYPE string,
             SalesOrg2MatiStatisticsGrp     TYPE string,
             SalesOrg2VolumeRebateGroup     TYPE string,
             SalesOrg2GenItemCatGrp         TYPE string,
             SalesOrg2PricingRefMati        TYPE string,
             SalesOrg2ProductHierarchy      TYPE string,
             SalesOrg2CommissionGroup       TYPE string,
             SalesOrg2MaterialPriceGroup    TYPE string,
             SalesOrg2AcctAssmtGrpMt        TYPE string,
             SalesOrg2ItemCategoryGroup     TYPE string,
             SalesOrg2Materialgrp1          TYPE string,
             SalesOrg2Materialgrp2          TYPE string,
             SalesOrg2Materialgrp3          TYPE string,
             SalesOrg2Materialgrp4          TYPE string,
             SalesOrg2Materialgrp5          TYPE string,
             SalesGeneralTaskID             TYPE string,
             SalesGeneralMaterial           TYPE string,
             SalesGeneralDescription        TYPE string,
             SalesGeneralPlant              TYPE string,
             SalesGeneralUOM                TYPE string,
             SalesGeneralGrossWeight        TYPE string,
             SalesGeneralNetWeight          TYPE string,
             SalesGeneralAvailabilityCheck  TYPE string,
             SalesGeneralApprBatch          TYPE string,
             SalesGeneralBatchManagement    TYPE string,
             SalesGeneralBatchManagPlant    TYPE string,
             SalesGeneralReplacementPart    TYPE string,
             SalesGeneralQualFreeGood       TYPE string,
             SalesGeneralMaterialFreight    TYPE string,
             SalesGeneralTransGrp           TYPE string,
             SalesGeneralSetupTime          TYPE string,
             SalesGeneralProcTime           TYPE string,
             SalesGeneralLoadingGrp         TYPE string,
             SalesGeneralBaseQty            TYPE string,
             SalesGeneralMatGrpPackMat      TYPE string,
             SalesGeneralProfitCenter       TYPE string,
             SalesGeneralNegStock           TYPE string,
             SalesGeneralIUIDRelevant       TYPE string,
             SalesGeneralExtAllocation      TYPE string,
             SalesGeneralSerialNoProfile    TYPE string,
             SalesGenralSerializlevel       TYPE string,
             SalesGeneralDistProf           TYPE string,
             SalesGeneralIuidType           TYPE string,
             InternationalExportTaskID      TYPE string,
             InternationExportMaterial      TYPE string,
             InternationalExportDescription TYPE string,
             InternationalExportPlant       TYPE string,
             InternationalIntrastatGroup    TYPE string,
             InternationalCASNumber         TYPE string,
             InternationalProdomNo          TYPE string,
             InternationalExportControlCode TYPE string,
             InternationalContryReg         TYPE string,
             InternationalRegionOfOrigin    TYPE string,
             SalesTextTaskID                TYPE string,
             SalesTextMaterial              TYPE string,
             SalesTextDesription            TYPE string,
             SalesTextSalesOrganization     TYPE string,
             SalesTextDistributionChannel   TYPE string,
           END OF Sales.
    TYPES : BEGIN OF WareHouse,
              Warehouse1TaskID               TYPE string,
              Warehouse1Material             TYPE string,
              Warehouse1description          TYPE string,
              Warehouse1Plant                TYPE string,
              Warehouse1WarehouseNo          TYPE string,
              Warehouse1UOM                  TYPE string,
              Warehouse1WMUnit               TYPE string,
              Warehouse1Unitofissue          TYPE string,
              Warehouse1ProposedUOM          TYPE string,
              Worehouse1PickingStorage       TYPE string,
              Worehouse1BatchManagement      TYPE string,
              Worehouse1BatchManagementPlant TYPE string,
              Warehouse1HazMaterial          TYPE string,
              Warehouse1GrossWeight          TYPE string,
              Warehouse1Volume               TYPE string,
              Warehouse1Capacity             TYPE string,
              Warehouse1ApprBatch            TYPE string,
              Warehouse1StockRemoval         TYPE string,
              Warehouse1StorageSection       TYPE string,
              Warehouse1SpecialMovement      TYPE string,
              Warehouse12StepPicking         TYPE string,
              Warehouse1StockPlacement       TYPE string,
              Warehouse1BulkStorage          TYPE string,
              Warehouse1MessagetoInv         TYPE string,
              Warehouse1AllowAddn            TYPE string,
              Warehouse2TaskID               TYPE string,
              Warehouse2Material             TYPE string,
              Warehouse2description          TYPE string,
              Warehouse2Plant                TYPE string,
              Warehouse2WarehouseNo          TYPE string,
              Warehouse2StgeType             TYPE string,
            END OF WareHouse.

    TYPES : BEGIN OF Files,
            Filename    TYPE string,
            Mimetype  TYPE string,
            Content  TYPE zattachment,
            Programname  TYPE string,
            END OF Files.

    TYPES : BEGIN OF QUALITYTAB,
            insptype    TYPE string,
            shorttext  TYPE string,
            active  TYPE string,
            END OF QUALITYTAB.

    CLASS-DATA it1 TYPE TABLE OF Accounting.
    CLASS-DATA it2 TYPE TABLE OF BasicData.
    CLASS-DATA it3 TYPE TABLE OF Costing.
    CLASS-DATA it4 TYPE TABLE OF GeneralPlant.
    CLASS-DATA it5 TYPE TABLE OF mrp.
    CLASS-DATA it6 TYPE TABLE OF Purchase.
    CLASS-DATA it7 TYPE TABLE OF Quality.
    CLASS-DATA it8 TYPE TABLE OF Sales.
    CLASS-DATA it9 TYPE TABLE OF WareHouse.
    CLASS-DATA it10 TYPE TABLE OF Files.
    CLASS-DATA it11 TYPE TABLE OF QUALITYTAB.

    TYPES : BEGIN OF str,
              Userid           TYPE string,
              Password         TYPE string,
              industrysector   TYPE string,
              MaterialtypeNext TYPE string,
              Accounting       LIKE it1,
              BasicData        LIKE it2,
              Costing          LIKE it3,
              GeneralPlant     LIKE it4,
              mrp              LIKE it5,
              Purchase         LIKE it6,
              Quality          LIKE it7,
              Sales            LIKE it8,
              WareHouse        LIKE it9,
              aFiles           LIKE it10,
              TableDataArray1           LIKE it11,

            END OF str.
    CLASS-DATA respo TYPE str .


    TYPES : BEGIN OF Deletetmat,
              TaskIDNo            TYPE string,
              MaterialNumber      TYPE string,
              MaterialDescription TYPE string,
              Delete              TYPE string,
            END OF Deletetmat.

    CLASS-DATA Deletetmatit TYPE TABLE OF Deletetmat.
    TYPES : BEGIN OF strdlt,
              tabledata LIKE Deletetmatit,

            END OF strdlt.
    CLASS-DATA respodlt TYPE strdlt .

    TYPES : BEGIN OF strAPRO,
              taskid   TYPE string,
              Userid   TYPE string,
              Password TYPE string,
            END OF strAPRO.
    CLASS-DATA respoAPRO TYPE strAPRO .

   TYPES : BEGIN OF strRejectio,
              RejectionRemark   TYPE string,
              taskid            TYPE string,
              Userid            TYPE string,
            END OF strRejectio.
    CLASS-DATA respRejectio TYPE strRejectio .


        TYPES : BEGIN OF TableDataArray1,
            TaskIDNo    TYPE string,
            MaterialNumber  TYPE string,
            END OF TableDataArray1.

    CLASS-DATA TableDataArray1PLANT TYPE TABLE OF TableDataArray1.

      TYPES : BEGIN OF strMatExt,
              storagelocation  TYPE string,
              salesorganization  TYPE string,
              distributionchan  TYPE string,
              TableDataArray1   LIKE TableDataArray1PLANT,
            END OF strMatExt.

    CLASS-DATA RESPOstrMatExt TYPE strMatExt .


    INTERFACES if_http_service_extension .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_HTTP IMPLEMENTATION.


  METHOD if_http_service_extension~handle_request.

    DATA(req) = request->get_form_fields( ).
    DATA(body) = request->get_text( ).

    xco_cp_json=>data->from_string( body )->write_to( REF #( respo ) ).
    DATA(type) = VALUE #( req[ name = 'type' ]-value OPTIONAL )   .
    DATA(selectedaction) = VALUE #( req[ name = 'selectedaction' ]-value OPTIONAL )   .




    DATA json  TYPE string .
    DATA(userid) = cl_abap_context_info=>get_user_technical_name( ) .
    IF selectedaction  <> 'MaterialExtend' AND  selectedaction  <> 'Change Material' AND type <> 'Delete'  AND type <> 'UnDelete' AND type <> 'Approval' AND type <> 'Unapproval' AND type <> 'Reject' .

      DATA: nr_number     TYPE cl_numberrange_runtime=>nr_number.

      TRY.
          CALL METHOD cl_numberrange_runtime=>number_get
            EXPORTING
              nr_range_nr = '01'
              object      = 'ZTASKID_MA'
              quantity    = 0000000001
            IMPORTING
              number      = nr_number.

        CATCH cx_nr_object_not_found.
        CATCH cx_number_ranges.
      ENDTRY.
      SHIFT nr_number LEFT DELETING LEADING '0'.
      DATA: lv_nr TYPE c LENGTH 7.
      lv_nr = |{ nr_number ALPHA = OUT }|.

    ENDIF.

    IF type = 'Delete' OR  type = 'UnDelete' .

      DATA WA_zmat_deltask TYPE zmat_deltask .

      xco_cp_json=>data->from_string( body )->write_to( REF #( respodlt ) ).

      LOOP AT respodlt-tabledata INTO DATA(wa).

        WA_zmat_deltask-taskid = wa-taskidno.
        WA_zmat_deltask-matnr  = wa-materialnumber.
        WA_zmat_deltask-maktx  = wa-materialdescription.
        WA_zmat_deltask-flag   = wa-delete.
        WA_zmat_deltask-deletiondate = SY-datum.
        WA_zmat_deltask-deletiontime = SY-timlo.
        lv_nr =  wa-taskidno.
        MODIFY zmat_deltask FROM @WA_zmat_deltask .

        CLEAR:wa,WA_zmat_deltask.
      ENDLOOP.

  READ TABLE  respodlt-tabledata INTO DATA(WA_DELT) INDEX 1.
       SELECT SINGLE *
FROM I_product WITH PRIVILEGED ACCESS as a WHERE Product = @WA_DELT-MaterialNumber INTO @data(productDELET).

if productDELET-Product is NOT INITIAL .
DATA create_productDELTE TYPE TABLE FOR UPDATE I_ProductTP_2.

create_productDELTE = VALUE #( (

%key-Product = WA_DELT-materialnumber
 IsMarkedForDeletion = WA_DELT-delete
 %control-IsMarkedForDeletion = if_abap_behv=>mk-on

 ) ).

MODIFY ENTITIES OF I_ProductTP_2
 ENTITY Product
  UPDATE FROM create_productDELTE

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
ENDIF.
 If failed_commit  is INITIAL  .

 loop at  mapped-product ASSIGNING FIELD-SYMBOL(<fs1>)    .
 product_t   = <fs1>-Product   .
* response->set_text( |{ product_t }| )  .
 endloop .

 ELSE.
  ERROR = 'E'.
IF reported-product IS NOT INITIAL .
  product_t = reported-product[ 1 ]-%msg->if_message~get_text( ).
ENDIF.
IF reported_commit-product IS NOT INITIAL .
   product_t = reported_commit-product[ 1 ]-%msg->if_message~get_text( ).
 ENDIF.

DATA(StatusRetun) = ERROR && product_t.
ENDIF.

      IF type = 'UnDelete' .
        CONCATENATE  'Task ID No.'  lv_nr  'UnDeleted Successfuly' INTO json SEPARATED BY ' '.
      ELSE.
        CONCATENATE  'Task ID No.'  lv_nr  'Deleted Successfuly' INTO json SEPARATED BY ' '.
      ENDIF.
      CLEAR:lv_nr.

    ELSEIF type = 'Approval' .

      xco_cp_json=>data->from_string( body )->write_to( REF #( respoAPRO ) ).

      UPDATE zmat_accountdata SET
                  apstatus  = 'X' ,
                  appid = @respoAPRO-userid,
                  app_date = @sy-datum,
                  app_time = @SY-timlo
                    WHERE
                  taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

      UPDATE zmat_basicdata_m SET
                apstatus  = 'X' ,
                appid = @respoAPRO-userid,
                app_date = @sy-datum,
                app_time = @SY-timlo
                  WHERE
                taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.


      UPDATE zmat_costingdata SET
            apstatus  = 'X' ,
            appid = @respoAPRO-userid,
            app_date = @sy-datum,
            app_time = @SY-timlo
              WHERE
            taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.


      UPDATE zmat_genplant SET
            apstatus  = 'X' ,
            appid = @respoAPRO-userid,
            app_date = @sy-datum,
            app_time = @SY-timlo
              WHERE
            taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

      UPDATE zmat_mrpdata SET
            apstatus  = 'X' ,
            appid = @respoAPRO-userid,
            app_date = @sy-datum,
            app_time = @SY-timlo
              WHERE
            taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

      UPDATE zmat_purdata SET
         apstatus  = 'X' ,
         appid = @respoAPRO-userid,
         app_date = @sy-datum,
         app_time = @SY-timlo
           WHERE
         taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

      UPDATE zmat_qmdata SET
         apstatus  = 'X' ,
         appid = @respoAPRO-userid,
         app_date = @sy-datum,
         app_time = @SY-timlo
           WHERE
         taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

      UPDATE zmat_salesdata SET
         apstatus  = 'X' ,
         appid = @respoAPRO-userid,
         app_date = @sy-datum,
         app_time = @SY-timlo
           WHERE
         taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

      UPDATE zmat_wmdata SET
         apstatus  = 'X' ,
         appid = @respoAPRO-userid,
         app_date = @sy-datum,
         app_time = @SY-timlo
           WHERE
         taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

      IF respoAPRO-taskid IS NOT INITIAL.

SELECT SINGLE * FROM ZMAT_BASICDATA_M_CDS WITH PRIVILEGED ACCESS
WHERE TaskIDNo = @respoAPRO-taskid  INTO @DATA(WA_BASICDATA) .

 SELECT SINGLE *
FROM I_product WITH PRIVILEGED ACCESS as a WHERE Product = @WA_BASICDATA-MaterialNumber INTO @data(product).

if product-Product is INITIAL .

        DATA(mat) = zcl_material_bapi=>createmat( taxkid = respoAPRO-taskid ).

      IF mat IS NOT INITIAL  .
          DATA(typeerror) = mat+0(1).

        DATA(len) = strlen( mat ).
*LEN = LEN - 1 .
        DATA(material) = mat+0(len).

        IF typeerror <> 'E'.
          DATA(mat2) = zmdm_table_mat_update=>createmat( matnr = material taxkid = respoAPRO-taskid  ).
        ENDIF.

      IF mat2 IS NOT INITIAL .
        CONCATENATE  'Task ID No.'  respoAPRO-taskid  'Approved Successfuly' 'And Material Created' material INTO json SEPARATED BY ' '.
      ELSE.
        mat2 = zmdm_table_mat_update=>unapprovedmat( taxkid = respoAPRO-taskid Userid = '' ).

        CONCATENATE  'Error Task ID No.'  respoAPRO-taskid  'Not Approved Mat Not Created This Error' mat INTO json SEPARATED BY ' '.
      ENDIF.

     ELSE.
             mat2 = zmdm_table_mat_update=>unapprovedmat( taxkid = respoAPRO-taskid Userid = '' ).

        CONCATENATE  'Error Task ID No.'  respoAPRO-taskid  'Not Approved Mat Not Created This Error' mat INTO json SEPARATED BY ' '.
     ENDIF.
************************************************************Change Material *******************************************************
else.

     DATA(changemat) = zcl_material_bapi_mm02=>updatemat( taxkid = respoAPRO-taskid ).

IF changemat IS NOT  INITIAL.
     typeerror = changemat+0(1).

        len = strlen( changemat ).
*LEN = LEN - 1 .
        material = changemat+0(len).
ENDIF.

    IF typeerror <> 'E'.
        CONCATENATE  'Task ID No.'  respoAPRO-taskid 'Approved Successfuly' 'And Material Changed Successfuly' material INTO json SEPARATED BY ' '.
      ELSE.

        mat2 = zmdm_table_mat_update=>unapprovedmat( taxkid = respoAPRO-taskid Userid = '' ).
        CONCATENATE  'Error Task ID No.'  respoAPRO-taskid  'Not Approved Mat Not Changed This Error' material INTO json SEPARATED BY ' '.

      ENDIF.

*  CONCATENATE  'Task ID No.'  respoAPRO-taskid  'Approved Successfuly' 'And Material Changed Successfuly' material INTO json SEPARATED BY ' '.

ENDIF.


ENDIF.
 ELSEIF type = 'Unapproval' .

         xco_cp_json=>data->from_string( body )->write_to( REF #( respoAPRO ) ).

         mat2 = zmdm_table_mat_update=>unapprovedmat( taxkid = respoAPRO-taskid Userid = respoAPRO-userid ).

          CONCATENATE  'Task ID No.'  respoAPRO-taskid  'UnApproved Successfuly' INTO json SEPARATED BY ' '.

ELSEIF  type = 'Reject' .

  xco_cp_json=>data->from_string( body )->write_to( REF #( respRejectio ) ).

  DATA WA_zmat_rejection TYPE zmat_rejection .

        WA_zmat_rejection-taskid           = respRejectio-taskid.
        WA_zmat_rejection-userid           = respRejectio-userid.
        WA_zmat_rejection-rejdate          = SY-datum.
        WA_zmat_rejection-rejecttime       = SY-timlo.
        WA_zmat_rejection-rejectionremark  = respRejectio-rejectionremark.
        MODIFY zmat_rejection FROM @WA_zmat_rejection .
        CLEAR:WA_zmat_rejection.

  UPDATE zmat_basicdata_m SET
         reject  = 'X'
         WHERE
         taskid = @respRejectio-taskid .
      COMMIT WORK AND WAIT.

          CONCATENATE  'Task ID No.'  respRejectio-taskid  'Rejected Successfuly' INTO json SEPARATED BY ' '.

**********************************************************Extend Material **********************
ELSEIF  selectedaction = 'MaterialExtend' .

  xco_cp_json=>data->from_string( body )->write_to( REF #( RESPOstrMatExt ) ).

    FIELD-SYMBOLS:
      <data>            TYPE data,
      <data2>           TYPE data,
      <field>           TYPE any,
      <field3>           TYPE any,
      <field4>           TYPE any,
      <field2>       TYPE any.
      DATA PLANT TYPE STRING.
      DATA sloc TYPE STRING.


      READ TABLE RESPOstrMatExt-tabledataarray1 INTO DATA(HEADMAT) INDEX 1.

     DATA(lr_d1) = /ui2/cl_json=>generate( json = body ).

    IF lr_d1 IS BOUND.
      ASSIGN lr_d1->* TO <data>.
        ASSIGN COMPONENT `HEADERDATA` OF STRUCTURE <data>  TO   <field>    .
      IF sy-subrc = 0 .
        ASSIGN <field>->* TO <data2>  .
      ENDIF.
**********************************************************Extend Material Plant **********************
       ASSIGN COMPONENT `PLANT` OF STRUCTURE <data2>  TO   <field2>    .
      IF sy-subrc = 0 .
        ASSIGN <field2>->* TO <field2> .
        LOOP AT <field2> ASSIGNING FIELD-SYMBOL(<FSS>).
         ASSIGN <FSS>->* TO <field3> .
         PLANT = <field3>.
 if PLANT is NOT INITIAL .
DATA(matEXTPLANT) = zcl_material_extend_bapi=>plantlocextd( taxkid = HEADMAT-taskidno mat = HEADMAT-materialnumber plant =
PLANT sloc = RESPOstrMatExt-storagelocation ).

  IF matEXTPLANT IS NOT INITIAL  .

        typeerror = matEXTPLANT+0(1).

        IF typeerror = 'E'.
         CONCATENATE  'Error Material' HEADMAT-materialnumber 'Not Extend This Loc & Plant '  plant '&' sloc 'This Error' matEXTPLANT INTO DATA(erroretx) SEPARATED BY ' '.
        ENDIF.

     ELSE.
     CONCATENATE  'Material'  HEADMAT-materialnumber  'Extend Successfuly This Loc & Plant'  plant '&' sloc INTO erroretx SEPARATED BY ' '.
ENDIF.

ENDIF.

  CLEAR: PLANT,matEXTPLANT,typeerror.
 ENDLOOP.
json = erroretx.

  ENDIF.
  ENDIF.
**********************************************************Extend Material Plant End**********************

**********************************************************Extend Material Sales Org Dischl **********************

if RESPOstrMatExt-salesorganization <> ''  AND RESPOstrMatExt-distributionchan <> '' .

DATA(matEXTSalesorgdist) = zcl_material_extend_bapi=>saleorfdist( taxkid = HEADMAT-taskidno mat = HEADMAT-materialnumber salesorg =
RESPOstrMatExt-salesorganization disturbchl = RESPOstrMatExt-distributionchan ).


 IF matEXTPLANT IS NOT INITIAL  .

        typeerror = matEXTSalesorgdist+0(1).

        IF typeerror = 'E'.
         CONCATENATE  'Error Material' HEADMAT-materialnumber 'Not Extend This Sales Organization & Distribution' RESPOstrMatExt-salesorganization '&' RESPOstrMatExt-distributionchan 'This Error' matEXTPLANT INTO erroretx SEPARATED BY ' '.
        ENDIF.

     ELSE.
     CONCATENATE  'Material'  HEADMAT-materialnumber  'Extend Successfuly This Sales Organization & Distribution'  RESPOstrMatExt-salesorganization '&' RESPOstrMatExt-distributionchan INTO erroretx SEPARATED BY ' '.
ENDIF.

json = erroretx.
ENDIF.
**********************************************************Extend Material Sales Org Dischl **********************


**********************************************************Extend Material **********************


 ELSE.

      LOOP AT respo-BasicData INTO DATA(wa_DELET).

        IF wa_DELET-basicdatataskid1 IS INITIAL .
          WA_zmat_deltask-taskid  = lv_nr.
        ELSE.
          WA_zmat_deltask-taskid   = wa_DELET-basicdatataskid1.
        ENDIF.

        WA_zmat_deltask-matnr  = wa_DELET-basicdata1material.
        WA_zmat_deltask-maktx  = wa_DELET-basicdata1description.
        MODIFY zmat_deltask FROM @WA_zmat_deltask .
        CLEAR:wa_DELET,WA_zmat_deltask.

      ENDLOOP.

      DATA WA_Mat_Account TYPE zmat_accountdata .

      LOOP AT respo-Accounting INTO DATA(wa1).

        IF wa1-accounting1taskid IS INITIAL .
          WA_Mat_Account-taskid  = lv_nr.
        ELSE.
          WA_Mat_Account-taskid   = wa1-accounting1taskid.
        ENDIF.

        SELECT SINGLE * FROM zmat_accountdata WITH PRIVILEGED ACCESS AS a
        WHERE taskid = @WA_Mat_Account-taskid INTO @DATA(oldatataskid).

        WA_Mat_Account-matnr   =  wa1-accounting1material.
        WA_Mat_Account-maktx    = wa1-accounting1description.
        WA_Mat_Account-werks     = wa1-accounting1plant.
        WA_Mat_Account-spart     = wa1-accounting1division.
        WA_Mat_Account-bklas     = wa1-accounting1valuationclass.
        WA_Mat_Account-eklas     = wa1-accounting1vcsaleordstk.
        WA_Mat_Account-qklas     = wa1-accouting1projectstock.
        WA_Mat_Account-meins     = wa1-accouting1baseunit.
        WA_Mat_Account-bwtty     = wa1-accouting1valuationccat.
        WA_Mat_Account-waers_1   = wa1-accounting1currentkey.
        WA_Mat_Account-stprs_1   = wa1-accounting1standardprice.
        WA_Mat_Account-pvprs_1   = wa1-accounting1perunitprice.
        WA_Mat_Account-peinh_1   = wa1-accounting1priceunit.
        WA_Mat_Account-vprsv_1   = wa1-accounting1pricecontrol.
        WA_Mat_Account-verpr     = wa1-account1movingprice.
        WA_Mat_Account-xlifo     = wa1-accounting2lifo.
        WA_Mat_Account-mypol     = wa1-accounting2lifopool.
        WA_Mat_Account-mlmaa     =  wa1-accounting1mlact.
        WA_Mat_Account-mlast      = wa1-accounting1pricedeterm.
        WA_Mat_Account-xbewm        =   ''.
        WA_Mat_Account-curry    = wa1-Accounting1CurrentKey.
        WA_Mat_Account-bwprs    = wa1-Accounting2TaxPrice1.
        WA_Mat_Account-bwps1    = wa1-Accounting2TaxPrice2.
        WA_Mat_Account-vjbws    = wa1-Accounting2TaxPrice3.
        WA_Mat_Account-bwprh   = wa1-Accounting2CommericalPrice1.
        WA_Mat_Account-bwph1   = wa1-Accounting2CommericalPrice2.
        WA_Mat_Account-vjbwh     = wa1-Accounting2CommericalPrice3.

        IF selectedaction  = 'Change Material' .

          WA_Mat_Account-created_by      = oldatataskid-created_by.
          WA_Mat_Account-created_date    = oldatataskid-created_date.
          WA_Mat_Account-created_time    = oldatataskid-created_time.
          WA_Mat_Account-login_id        = oldatataskid-login_id.
        ELSE.
          WA_Mat_Account-created_by      = userid.
          WA_Mat_Account-created_date    = sy-datum.
          WA_Mat_Account-created_time    = SY-timlo.
          WA_Mat_Account-login_id        = respo-userid.
        ENDIF.

        WA_Mat_Account-change_by       = userid .
        WA_Mat_Account-change_date     = sy-datum.
        WA_Mat_Account-change_time     = SY-timlo.
        WA_Mat_Account-change_login_id = respo-userid.
        WA_Mat_Account-abwkz           = wa1-Accounting2DevaluationInd.
        WA_Mat_Account-bwpei           = wa1-Accounting2PriceUnit.
*      WA_Mat_Account-apstatus        = ''.
*      WA_Mat_Account-appid           = ''.
*      WA_Mat_Account-app_date        = ''.
*      WA_Mat_Account-app_time        = ''.

        MODIFY zmat_accountdata FROM @WA_Mat_Account .
        CLEAR:wa1,WA_Mat_Account.
      ENDLOOP.




      DATA WA_Mat_BasicData TYPE zmat_basicdata_m .
      LOOP AT respo-BasicData INTO DATA(wa2).
        IF wa2-basicdatataskid1 IS INITIAL .
          WA_Mat_BasicData-taskid   = lv_nr.
        ELSE.
          WA_Mat_BasicData-taskid         = wa2-basicdatataskid1 .
        ENDIF.
        WA_Mat_BasicData-matnr          = wa2-basicdata1material.
        WA_Mat_BasicData-maktx          = wa2-basicdata1description.
        WA_Mat_BasicData-meins          = wa2-basicdata1uom.
        WA_Mat_BasicData-bismt          = wa2-generaldataoldmaterialnumber.
        WA_Mat_BasicData-spart     = wa2-basicdata1division.
        WA_Mat_BasicData-kosch    = wa2-basicdata1productallocation.
        WA_Mat_BasicData-matkl    = wa2-basicdata1materialgroup.
        WA_Mat_BasicData-extwg    = wa2-basicdataextmatlgroup.
        WA_Mat_BasicData-labor  = wa2-basicdata1laboffice.
        WA_Mat_BasicData-mtpos_mara  = wa2-basicdata1genitemcatgroup.
        WA_Mat_BasicData-begru     = wa2-basicdata1authorizationgroup.
        WA_Mat_BasicData-brgew  = wa2-basicdata1grossweight.
        WA_Mat_BasicData-gewei  = wa2-basicdata1dimensionsweightunit.
        WA_Mat_BasicData-ntgew = wa2-basicdatanetweight.
        WA_Mat_BasicData-volum  = wa2-basicdata1volume.
        WA_Mat_BasicData-groes   = wa2-basicdatasizedimensions.
        WA_Mat_BasicData-ean11  = wa2-basicdata1eanupc.
        WA_Mat_BasicData-voleh  = wa2-basicdata1dimensionsvolumeunit.
        WA_Mat_BasicData-numtp  = wa2-basicdata1dimensioneancategory.
        WA_Mat_BasicData-magrv  = wa2-basicdata1matlgrppackmat.
        WA_Mat_BasicData-normt  = wa2-basicdata2indstddescription.
        WA_Mat_BasicData-wrkst   = wa2-basicdata2basicmaterial.
        WA_Mat_BasicData-msbookpartno = wa2-basidata2msbookpartno.
        WA_Mat_BasicData-medium    = wa2-basicdata2medium.
        WA_Mat_BasicData-mtart  = respo-materialtypenext.
        WA_Mat_BasicData-mbrsh  = respo-industrysector.

        SELECT SINGLE * FROM zmat_basicdata_m WITH PRIVILEGED ACCESS AS a
WHERE taskid = @WA_Mat_BasicData-taskid INTO @DATA(oldatazmat_basicdata_m).

        IF selectedaction  = 'Change Material' .

          WA_Mat_BasicData-created_by      = oldatazmat_basicdata_m-created_by.
          WA_Mat_BasicData-created_date    = oldatazmat_basicdata_m-created_date.
          WA_Mat_BasicData-created_time    = oldatazmat_basicdata_m-created_time.
          WA_Mat_BasicData-login_id        = oldatazmat_basicdata_m-login_id.
        ELSE.
          WA_Mat_BasicData-created_by      = userid.
          WA_Mat_BasicData-created_date    = sy-datum.
          WA_Mat_BasicData-created_time    = SY-timlo.
          WA_Mat_BasicData-login_id        = respo-userid.
        ENDIF.

        WA_Mat_BasicData-change_by       = userid .
        WA_Mat_BasicData-change_date     = sy-datum.
        WA_Mat_BasicData-change_time     = SY-timlo.
        WA_Mat_BasicData-change_login_id = respo-userid.

        MODIFY zmat_basicdata_m FROM @WA_Mat_BasicData .
        CLEAR:wa2,WA_Mat_BasicData.
      ENDLOOP.




      DATA WA_Mat_CostingData TYPE zmat_costingdata .
      LOOP AT respo-Costing INTO DATA(wa3).
        IF wa3-costing1taskid IS INITIAL .
          WA_Mat_CostingData-taskid  = lv_nr.
        ELSE.
          WA_Mat_CostingData-taskid    = wa3-costing1taskid.
        ENDIF.
        WA_Mat_CostingData-matnr   = wa3-costing1material.
        WA_Mat_CostingData-maktx  = wa3-costing1description.
        WA_Mat_CostingData-werks  = wa3-costing1plant.
        WA_Mat_CostingData-meins = wa3-costing1uom.
        WA_Mat_CostingData-ncost = wa3-costing1donotcost.
        WA_Mat_CostingData-ekalr = wa3-costing1withqtystructure.
        WA_Mat_CostingData-hkmat = wa3-costing1materialorigin.
        WA_Mat_CostingData-awsls = wa3-costing1variancekey.
        WA_Mat_CostingData-prctr  = wa3-costing1profitcenter.
        WA_Mat_CostingData-mmsta = wa3-costing1plantspmatl.
        WA_Mat_CostingData-stlal = wa3-costing1alternativebom.
        WA_Mat_CostingData-plnnr = wa3-costing1tasklisttype.
        WA_Mat_CostingData-sobsk = wa3-costing1specprocurem.
        WA_Mat_CostingData-kzkup = wa3-costing1coproduct.
        WA_Mat_CostingData-fxpru = wa3-costing1fxdprice.
        WA_Mat_CostingData-stlan = wa3-costing1bomusage.
        WA_Mat_CostingData-aplal = wa3-costing1groupcounter.
        WA_Mat_CostingData-losgr  = wa3-costing1costinglotsize.
        WA_Mat_CostingData-fvidk = wa3-costing1productionversion.
        WA_Mat_CostingData-werks = wa3-costing2plant.
        WA_Mat_CostingData-bklas = wa3-costing2valuationdata.
        WA_Mat_CostingData-zplp1 = wa3-costing2futureplannedprice.
        WA_Mat_CostingData-lfmon = wa3-costing2currentperiod.
        WA_Mat_CostingData-plprs = wa3-costing2currentplannedprice.
        WA_Mat_CostingData-zplp1 = wa3-costing2plannedprice1.
        WA_Mat_CostingData-zplp2 = wa3-costing2plannedprice2.
        WA_Mat_CostingData-zplp3 = wa3-costing2plannedprice3.
        WA_Mat_CostingData-vprsv_1 = wa3-costing2pricecontrol.
        WA_Mat_CostingData-eklas = wa3-costing2vcsalesorderstk.
        WA_Mat_CostingData-peinh = wa3-costing2priceunit.
        WA_Mat_CostingData-bwtty = wa3-costing2valuationccat.
        WA_Mat_CostingData-qklas = wa3-costing2projstkval.
        WA_Mat_CostingData-waers_1 = wa3-costing2currency.
        WA_Mat_CostingData-stprs = wa3-costingstandardprice.

        SELECT SINGLE * FROM zmat_costingdata WITH PRIVILEGED ACCESS AS a
WHERE taskid = @WA_Mat_CostingData-taskid INTO @DATA(oldatazmat_costingdata).
        IF selectedaction  = 'Change Material' .

          WA_Mat_CostingData-created_by      = oldatazmat_costingdata-created_by.
          WA_Mat_CostingData-created_date    = oldatazmat_costingdata-created_date.
          WA_Mat_CostingData-created_time    = oldatazmat_costingdata-created_time.
          WA_Mat_CostingData-login_id        = oldatazmat_costingdata-login_id.
        ELSE.
          WA_Mat_CostingData-created_by      = userid.
          WA_Mat_CostingData-created_date    = sy-datum.
          WA_Mat_CostingData-created_time    = SY-timlo.
          WA_Mat_CostingData-login_id        = respo-userid.
        ENDIF.

        WA_Mat_CostingData-change_by       = userid .
        WA_Mat_CostingData-change_date     = sy-datum.
        WA_Mat_CostingData-change_time     = SY-timlo.
        WA_Mat_CostingData-change_login_id = respo-userid.

        MODIFY zmat_costingdata FROM @WA_Mat_CostingData .
        CLEAR:wa3,WA_Mat_CostingData.
      ENDLOOP.



      DATA WA_Mat_GeneralPlant TYPE zmat_genplant .
      LOOP AT respo-GeneralPlant INTO DATA(wa4).

        IF wa4-generalplant1taskid IS INITIAL .
          WA_Mat_GeneralPlant-taskid  = lv_nr.
        ELSE.
          WA_Mat_GeneralPlant-taskid    = wa4-generalplant1taskid.
        ENDIF.

        WA_Mat_GeneralPlant-matnr = wa4-generalplant1material.
        WA_Mat_GeneralPlant-maktx = wa4-generalplant1description.
        WA_Mat_GeneralPlant-werks = wa4-generalplant1dataplant.
        WA_Mat_GeneralPlant-meins = wa4-generalplant1uom.
        WA_Mat_GeneralPlant-lgort = wa4-generalplant1storagelocation.
        WA_Mat_GeneralPlant-lgpbe = wa4-generalplantstoragebin.
        WA_Mat_GeneralPlant-tempb = wa4-generalplant1tempcond.
        WA_Mat_GeneralPlant-abcin = wa4-generalplantccphysinv.
        WA_Mat_GeneralPlant-etiar = wa4-generalplant1labeltype.
        WA_Mat_GeneralPlant-xchpf = wa4-generalplant1batchmanagement.
        WA_Mat_GeneralPlant-xchpf1 = wa4-generalplant1batchmanagplant.
        WA_Mat_GeneralPlant-ccfix  = wa4-generalplant1ccfixed.
        WA_Mat_GeneralPlant-xgchp = wa4-generalplant1apprbatch.
        WA_Mat_GeneralPlant-etifo = wa4-generalplant1labfrom.
        WA_Mat_GeneralPlant-ausme = wa4-generalplant1unitissue.
        WA_Mat_GeneralPlant-lwmkb = wa4-generalplant1pickingarea.
        WA_Mat_GeneralPlant-raube = wa4-generalplant1storagecondition.
        WA_Mat_GeneralPlant-stoff = wa4-generalplant1hazmaterial.
        WA_Mat_GeneralPlant-mhdlp = wa4-generalplant1storagepercen.
        WA_Mat_GeneralPlant-maxlz = wa4-generalplant1maxstorage.
        WA_Mat_GeneralPlant-mhdrz = wa4-generalplant1minrem.
        WA_Mat_GeneralPlant-iprkz = wa4-generalplant1periodinforsled.
        WA_Mat_GeneralPlant-mhdhb = wa4-generalplant1totalshelf.
        WA_Mat_GeneralPlant-rdmhd = wa4-generalplant1rounding.
        WA_Mat_GeneralPlant-sled_bbd = wa4-generalplant1expirationdate.
        WA_Mat_GeneralPlant-scm_maturity_dur = wa4-generalplant1maturation.
        WA_Mat_GeneralPlant-scm_shlf_lfe_req_max = wa4-generalplant1reqmax.
        WA_Mat_GeneralPlant-sgt_covs = wa4-generalplant1segmantations.
        WA_Mat_GeneralPlant-sgt_mrpsi = wa4-generalplantsortstk.
        WA_Mat_GeneralPlant-sgt_defsc = wa4-generalplant1defultstock.
        WA_Mat_GeneralPlant-brgew = wa4-generalplant2grossweight.
        WA_Mat_GeneralPlant-volum = wa4-generalplant2volume.
        WA_Mat_GeneralPlant-gewei = wa4-generalplant2weightunit.
        WA_Mat_GeneralPlant-voleh = wa4-generaldata2volumeunit.
        WA_Mat_GeneralPlant-xmcng = wa4-generalplant2negstocks.
        WA_Mat_GeneralPlant-sernp = wa4-generalplant2serialno.
        WA_Mat_GeneralPlant-prctr = wa4-generalplant2profitcenter.
        WA_Mat_GeneralPlant-iuid_relevant = wa4-generalplant2iuidrelevant.
        WA_Mat_GeneralPlant-loggr = wa4-generalplant2loghandling.
        WA_Mat_GeneralPlant-fprfm = wa4-generalplant2distrprofile.
        WA_Mat_GeneralPlant-uid_iea = wa4-generalplant2externalallo.

        SELECT SINGLE * FROM zmat_genplant WITH PRIVILEGED ACCESS AS a
 WHERE taskid = @WA_Mat_GeneralPlant-taskid INTO @DATA(oldatazmat_genplant).

        IF selectedaction  = 'Change Material' .

          WA_Mat_GeneralPlant-created_by      = oldatazmat_genplant-created_by.
          WA_Mat_GeneralPlant-created_date    = oldatazmat_genplant-created_date.
          WA_Mat_GeneralPlant-created_time    = oldatazmat_genplant-created_time.
          WA_Mat_GeneralPlant-login_id        = oldatazmat_genplant-login_id.
        ELSE.
          WA_Mat_GeneralPlant-created_by      = userid.
          WA_Mat_GeneralPlant-created_date    = sy-datum.
          WA_Mat_GeneralPlant-created_time    = SY-timlo.
          WA_Mat_GeneralPlant-login_id        = respo-userid.
        ENDIF.

        WA_Mat_Account-change_by       = userid .
        WA_Mat_Account-change_date     = sy-datum.
        WA_Mat_Account-change_time     = SY-timlo.
        WA_Mat_Account-change_login_id = respo-userid.

        MODIFY zmat_genplant FROM @WA_Mat_GeneralPlant .
        CLEAR:wa4,WA_Mat_GeneralPlant.
      ENDLOOP.



      DATA WA_Mat_mrp TYPE zmat_mrpdata .
      LOOP AT respo-mrp INTO DATA(wa5).

        IF wa5-mrp1taskid IS INITIAL .
          WA_Mat_mrp-taskid  = lv_nr.
        ELSE.
          WA_Mat_mrp-taskid    = wa5-mrp1taskid.
        ENDIF.

        WA_Mat_mrp-matnr = wa5-mrp1material.
        WA_Mat_mrp-maktx = wa5-mrp1descrition.
        WA_Mat_mrp-werks = wa5-mrp1plant.
        WA_Mat_mrp-meins = wa5-mrp1uom.
        WA_Mat_mrp-ekgrp = wa5-mrp1purchasinggroup.
        WA_Mat_mrp-mmsta = wa5-mrp1plantspmatlstatus.
        WA_Mat_mrp-disgr = wa5-mrp1mrpgroup.
        WA_Mat_mrp-maabc = wa5-mrp1abcindicator.
        WA_Mat_mrp-dismm = wa5-mrp1mrptype.
        WA_Mat_mrp-minbe = wa5-mrp1reorderpoint.
        WA_Mat_mrp-lfrhy = wa5-mrp1planningcycle.
        WA_Mat_mrp-fxhor = wa5-mrp1planningtime.
        WA_Mat_mrp-dispo = wa5-mrp1mrpcontroller.
        WA_Mat_mrp-disls = wa5-mrp1lotsizingprocedure.
        WA_Mat_mrp-bstmi = wa5-mrp1minimumlotsize.
        WA_Mat_mrp-bstfe = wa5-mrp1fixedlotsize.
        WA_Mat_mrp-losfx = wa5-mrp1lsindependent.
        WA_Mat_mrp-ausss = wa5-mrp1assemblyscrap.
        WA_Mat_mrp-rdprf = wa5-mrp1roundingprofile.
        WA_Mat_mrp-bstma = wa5-mrp1maximumlotsize.
        WA_Mat_mrp-mabst = wa5-mrp1maximumstocklevel.
        WA_Mat_mrp-lagpr = wa5-mrp1storagecosts.
        WA_Mat_mrp-takzt = wa5-mrp1takttime.
        WA_Mat_mrp-bstrf = wa5-mrp1roundingvalue.
        WA_Mat_mrp-beskz = wa5-mrp2procurmenttype.
        WA_Mat_mrp-sobsl = wa5-mrp2specialprocurement.
        WA_Mat_mrp-rgekz = wa5-mrp2backflush.
        WA_Mat_mrp-fabkz = wa5-mrp2jitdelivery.
        WA_Mat_mrp-schgt = wa5-mrp2bulkmaterial.
        WA_Mat_mrp-fhori = wa5-mrp2schedmarginkey.
        WA_Mat_mrp-plifz = wa5-mrp2planningdelivtime.
        WA_Mat_mrp-mrppp = wa5-mrp2planningcalendar.
        WA_Mat_mrp-eisbe = wa5-mrp2safetystock.
        WA_Mat_mrp-eislo = wa5-mrp2minsafetystock.
        WA_Mat_mrp-shflg = wa5-mrp2safetytimeind.
        WA_Mat_mrp-shpro = wa5-mrp2stimeperiod.
        WA_Mat_mrp-lgrad = wa5-mrp2servicelevel.
        WA_Mat_mrp-shzet = wa5-mrp2safetytime.
        WA_Mat_mrp-perkz = wa5-mrp3perioiindicator.
        WA_Mat_mrp-auftl = wa5-mrp3splittingindicator.
        WA_Mat_mrp-periv = wa5-mrp3fiscalyearvariant.
        WA_Mat_mrp-strgr = wa5-mrp3strategygroup.
        WA_Mat_mrp-vrmod = wa5-mrp3consumptionmode.
        WA_Mat_mrp-vint1 = wa5-mrp3fwdconsumptionper.
        WA_Mat_mrp-xvplb = wa5-mrp3planningvarient.
        WA_Mat_mrp-stdpd = wa5-mrp3configurable.
        WA_Mat_mrp-xltyp = wa5-mrp3varient.
        WA_Mat_mrp-mtvfp = wa5-mrp3availability.
        WA_Mat_mrp-lgort = wa5-mrp4storagelocation.
        WA_Mat_mrp-kausf = wa5-mrp4componentscrap.
        WA_Mat_mrp-kzbed = wa5-mrp4requirementsgroup.
        WA_Mat_mrp-ahdis = wa5-mrp4mrpdeprequirements.
        WA_Mat_mrp-kzaus = wa5-mrp4discontinuedind.
        WA_Mat_mrp-ausdt = wa5-mrp4effout.
        WA_Mat_mrp-sbdkz = wa5-mrp4individualcoll.
        WA_Mat_mrp-nfmat = wa5-mrp4followupmatl.
        WA_Mat_mrp-sfepr = wa5-mrp4repetmanufac.
        WA_Mat_mrp-mdach = wa5-mrp4actioncontrol.
        WA_Mat_mrp-prmod = wa5-forecastingforecastmodel.
        WA_Mat_mrp-vrbmt = wa5-forecastingrefmatlconsumption.
        WA_Mat_mrp-prdat = wa5-forecastingdateto.
        WA_Mat_mrp-vrbwk = wa5-forecastingrefplantconsu.
        WA_Mat_mrp-peran = wa5-forecastinghistperiod.
        WA_Mat_mrp-perin = wa5-forecastinginitializationpds.
        WA_Mat_mrp-anzpr = wa5-forecastingforecastperiods.
        WA_Mat_mrp-fimon = wa5-forecastingfixedperiods.
        WA_Mat_mrp-kzini = wa5-forecastinginitialization.
        WA_Mat_mrp-modaw = wa5-forecastingmodelsel.
        WA_Mat_mrp-opgra = wa5-forecastingoptimization.
        WA_Mat_mrp-alpha = wa5-forecastingalphafactor.
        WA_Mat_mrp-gamma = wa5-forecastinggammafactor.
        WA_Mat_mrp-siggr = wa5-forecastingtracking.
        WA_Mat_mrp-modav = wa5-forecastingselectionproce.
        WA_Mat_mrp-gewgr = wa5-forecastingweighting.
        WA_Mat_mrp-beta1 = wa5-forecastingbetafactor.
        WA_Mat_mrp-delta = wa5-forecastingdeltafactor.
        WA_Mat_mrp-workschedulingMaterial           = wa5-workschedulingMaterial.
        WA_Mat_mrp-workschedulingDescription        = wa5-workschedulingDescription.
        WA_Mat_mrp-workschedulingPlant              = wa5-workschedulingPlant.
        WA_Mat_mrp-WorkscBaseunit                   = wa5-WorkscBaseunit.
        WA_Mat_mrp-workProductionunit               = wa5-workProductionunit.
        WA_Mat_mrp-workprodnsupervisor              = wa5-workprodnsupervisor.
        WA_Mat_mrp-workprodschedprofile             = wa5-workprodschedprofile.
        WA_Mat_mrp-workserialno                     = wa5-workserialno.
        WA_Mat_mrp-workseriallevel                  = wa5-workseriallevel.
        WA_Mat_mrp-workcriticalpart                 = wa5-workcriticalpart.
        WA_Mat_mrp-workInspstock                    = wa5-workInspstock.
        WA_Mat_mrp-workUnitofissue                  = wa5-workUnitofissue.
        WA_Mat_mrp-workmaterialstatus               = wa5-workmaterialstatus.
        WA_Mat_mrp-workvalidfrom                    = wa5-workvalidfrom.
        WA_Mat_mrp-workLocation                     = wa5-workLocation.
        WA_Mat_mrp-workmatgrouping                  = wa5-workmatgrouping.
        WA_Mat_mrp-workoverallprofile               = wa5-workoverallprofile.
        WA_Mat_mrp-workbatchentry                   = wa5-workbatchentry.
        WA_Mat_mrp-workapprbatchrecreq              = wa5-workapprbatchrecreq.
        WA_Mat_mrp-Workbatchmanagemnt               = wa5-Workbatchmanagemnt.
        WA_Mat_mrp-Workbatchmanagemntplant          = wa5-Workbatchmanagemntplant.
        WA_Mat_mrp-workunderdelivtol                = wa5-workunderdelivtol.
        WA_Mat_mrp-workOverdelivtol                 = wa5-workOverdelivtol.
        WA_Mat_mrp-WorkUnlimited                    = wa5-WorkUnlimited.
        WA_Mat_mrp-worksetup                        = wa5-worksetup.
        WA_Mat_mrp-workpreocessingtime              = wa5-workpreocessingtime.
        WA_Mat_mrp-workInteroperation               = wa5-workInteroperation.
        WA_Mat_mrp-workbasequentity                 = wa5-workbasequentity.



        SELECT SINGLE * FROM zmat_mrpdata WITH PRIVILEGED ACCESS AS a
   WHERE taskid = @WA_Mat_mrp-taskid INTO @DATA(oldatazmat_mrpdata).

        IF selectedaction  = 'Change Material' .

          WA_Mat_mrp-created_by      = oldatazmat_mrpdata-created_by.
          WA_Mat_mrp-created_date    = oldatazmat_mrpdata-created_date.
          WA_Mat_mrp-created_time    = oldatazmat_mrpdata-created_time.
          WA_Mat_mrp-login_id        = oldatazmat_mrpdata-login_id.
        ELSE.
          WA_Mat_mrp-created_by      = userid.
          WA_Mat_mrp-created_date    = sy-datum.
          WA_Mat_mrp-created_time    = SY-timlo.
          WA_Mat_mrp-login_id        = respo-userid.
        ENDIF.

        WA_Mat_Account-change_by       = userid .
        WA_Mat_Account-change_date     = sy-datum.
        WA_Mat_Account-change_time     = SY-timlo.
        WA_Mat_Account-change_login_id = respo-userid.

        MODIFY zmat_mrpdata FROM @WA_Mat_mrp .
        CLEAR:wa5,WA_Mat_mrp.
      ENDLOOP.



      DATA WA_Mat_Purchase TYPE zmat_purdata .
      LOOP AT respo-Purchase INTO DATA(wa6).

        IF wa6-PurchasingTaskID IS INITIAL .
          WA_Mat_Purchase-taskid  = lv_nr.
        ELSE.
          WA_Mat_Purchase-taskid    = wa6-PurchasingTaskID.
        ENDIF.

        WA_Mat_Purchase-matnr    = wa6-PurchasinghMaterial.
        WA_Mat_Purchase-maktx    = wa6-purchasingdesription.
        WA_Mat_Purchase-werks    = wa6-purchasingplant.
        WA_Mat_Purchase-meins    = wa6-purchasinguom.
        WA_Mat_Purchase-bstme    = wa6-purchasingorderunit.
        WA_Mat_Purchase-vabme    = ''.
        WA_Mat_Purchase-ekgrp    = wa6-PurchasingPurchasingGroup.
        WA_Mat_Purchase-matkl    = wa6-purchasinghmaterialgroup.
        WA_Mat_Purchase-mmsta    = wa6-PurchasingPlantSpMatlStatus.
        WA_Mat_Purchase-mmstd    = wa6-PurchasingValidFrom.
        WA_Mat_Purchase-taxim    = wa6-PurchasingTaxInd.
        WA_Mat_Purchase-nrfhg    = ''.
        WA_Mat_Purchase-mfrgr    = wa6-PurchasingMaterialFreight.
        WA_Mat_Purchase-kautb    = ''.
        WA_Mat_Purchase-xchpf    = wa6-PurchasingBatchManagement.
        WA_Mat_Purchase-xchpf1   = wa6-PurchasingBatchManagPlant.
        WA_Mat_Purchase-ekwsl    = wa6-PurchasingPurchaseValueKey.
        WA_Mat_Purchase-mahn1    = wa6-PurchasingReminder1.
        WA_Mat_Purchase-mahn2    = wa6-PurchasingReminder2.
        WA_Mat_Purchase-mahn3    = wa6-PurchasingReminder3.
        WA_Mat_Purchase-welfz    = wa6-PurchasingStdValueDelive.
        WA_Mat_Purchase-untto    = wa6-PurchasingUnderdelTole.
        WA_Mat_Purchase-uebto    = wa6-PurchasingOverdelTol.
        WA_Mat_Purchase-weprz    = wa6-PurchasingMinDelQty.
        WA_Mat_Purchase-evers    = wa6-PurchasingShippingInst.
        WA_Mat_Purchase-uebtk    = wa6-PurchasingUnltdOverDelivery  .
        WA_Mat_Purchase-kzabs    = wa6-PurchasingAcknowledgement.
        WA_Mat_Purchase-webaz    = ''.
        WA_Mat_Purchase-insmk    = ''.
        WA_Mat_Purchase-fabkz    = ''.
        WA_Mat_Purchase-kzkri    = ''.
        WA_Mat_Purchase-kordb    = ''.
        WA_Mat_Purchase-mtver    = ''.
        WA_Mat_Purchase-casnr    = wa6-InternationalImportCASNumber .
        WA_Mat_Purchase-gpnum    = wa6-InternationalImportProdComNo.
        WA_Mat_Purchase-steuc    = wa6-InternationalImportControlCode.
        WA_Mat_Purchase-herkl    = wa6-InternationalImportCountry.
        WA_Mat_Purchase-herkr    = wa6-InternationalRegionofOrigin.

        SELECT SINGLE * FROM zmat_purdata WITH PRIVILEGED ACCESS AS a
   WHERE taskid = @WA_Mat_Purchase-taskid INTO @DATA(oldatazmat_purdata).

        IF selectedaction  = 'Change Material' .
          WA_Mat_Purchase-created_by      = oldatazmat_purdata-created_by.
          WA_Mat_Purchase-created_date    = oldatazmat_purdata-created_date.
          WA_Mat_Purchase-created_time    = oldatazmat_purdata-created_time.
          WA_Mat_Purchase-login_id        = oldatazmat_purdata-login_id.
        ELSE.
          WA_Mat_Purchase-created_by      = userid.
          WA_Mat_Purchase-created_date    = sy-datum.
          WA_Mat_Purchase-created_time    = SY-timlo.
          WA_Mat_Purchase-login_id        = respo-userid.
        ENDIF.

        WA_Mat_Purchase-change_by          = userid.
        WA_Mat_Purchase-change_date        = sy-datum.
        WA_Mat_Purchase-change_time        = SY-timlo.
        WA_Mat_Purchase-change_login_id    = respo-userid.
        WA_Mat_Purchase-bmatn           = ''.
        WA_Mat_Purchase-mfrpn              = ''.
        WA_Mat_Purchase-mfrnr              = ''.
        WA_Mat_Purchase-mprof              = ''.

        MODIFY zmat_purdata FROM @WA_Mat_Purchase .
        CLEAR:wa6,WA_Mat_Purchase.
      ENDLOOP.




      DATA WA_Mat_Quality TYPE zmat_qmdata .
      LOOP AT respo-Quality INTO DATA(wa7).
        IF wa7-qualitytaskid IS INITIAL .
          WA_Mat_Quality-taskid  = lv_nr.
        ELSE.
          WA_Mat_Quality-taskid    = wa7-qualitytaskid.
        ENDIF.
        WA_Mat_Quality-matnr = wa7-qualitymaterial.
        WA_Mat_Quality-maktx = wa7-qualitydescription.
        WA_Mat_Quality-werks = wa7-QualityPlant.
        WA_Mat_Quality-meins = wa7-QualityUOM.
        WA_Mat_Quality-ausme = wa7-QualityUnitofissue.
        WA_Mat_Quality-qmata = wa7-QualityQMMaterialAuth.
        WA_Mat_Quality-kzdkz = wa7-QualityDocumentationRequired.
        WA_Mat_Quality-webaz = wa7-QualityGrProcessingTime.
        WA_Mat_Quality-rbnrm = wa7-QualityCatalogProfile.
        WA_Mat_Quality-prfrq = wa7-QualityInspectionInterval.
        WA_Mat_Quality-mmsta = wa7-Qualityplantspmatl.
        WA_Mat_Quality-mmstd = wa7-QualityValidFrom.
        WA_Mat_Quality-qssys = ''.
        WA_Mat_Quality-qmpur = wa7-QualityQMinProcurActive.
        WA_Mat_Quality-ssqss = wa7-QualityQMControlKey.
        WA_Mat_Quality-qzgtp     = wa7-qualitycertificatetype.

        SELECT SINGLE * FROM zmat_qmdata WITH PRIVILEGED ACCESS AS a
WHERE taskid = @WA_Mat_Purchase-taskid INTO @DATA(oldatazmat_qmdata).

        IF selectedaction  = 'Change Material' .
          WA_Mat_Quality-created_by      = oldatazmat_qmdata-created_by.
          WA_Mat_Quality-created_date    = oldatazmat_qmdata-created_date.
          WA_Mat_Quality-created_time    = oldatazmat_qmdata-created_time.
          WA_Mat_Quality-login_id        = oldatazmat_qmdata-login_id.
        ELSE.
          WA_Mat_Quality-created_by      = userid.
          WA_Mat_Quality-created_date    = sy-datum.
          WA_Mat_Quality-created_time    = SY-timlo.
          WA_Mat_Quality-login_id        = respo-userid.
        ENDIF.

        WA_Mat_Quality-change_by            = userid.
        WA_Mat_Quality-change_date          = sy-datum.
        WA_Mat_Quality-change_time          = SY-timlo.
        WA_Mat_Quality-change_login_id      = respo-userid.




        MODIFY zmat_qmdata FROM @WA_Mat_Quality .
        CLEAR:wa7,WA_Mat_Quality.
      ENDLOOP.


      DATA WA_Mat_Sales TYPE zmat_salesdata .
      LOOP AT respo-Sales INTO DATA(wa8).

        IF wa8-salesgeneraltaskid IS INITIAL .
          WA_Mat_Sales-taskid  = lv_nr.
        ELSE.
          WA_Mat_Sales-taskid    = wa8-salesgeneraltaskid.
        ENDIF.

        WA_Mat_Sales-matnr   = wa8-SalesOrg1Material.
        WA_Mat_Sales-werks = wa8-SalesGeneralPlant.
        wa_mat_sales-maktx = wa8-salesgeneraldescription.
        wa_mat_sales-vkorg = wa8-SalesOrg1Salesorganization .
        wa_mat_sales-vtweg = wa8-SalesOrg1DistributionChannel.
        wa_mat_sales-meins = wa8-SalesOrg1UOM.
        wa_mat_sales-spart = wa8-SalesOrg1Division  .
        wa_mat_sales-vrkme = wa8-SalesOrg1SalesUnit .
        wa_mat_sales-vavme = wa8-SalesOrg1SalesUnitNot.
        wa_mat_sales-megru = wa8-SalesOrg1UnitOfMeasureGrp.
        wa_mat_sales-mstav = ''.
        wa_mat_sales-mstdv = wa8-SalesOrg1XDistrChainStatus.
        wa_mat_sales-vmsta = wa8-salesorg1dchainspestatus .
        wa_mat_sales-vmstd = wa8-SalesOrg1ValidFrom .
        wa_mat_sales-dwerk   = wa8-salesorg1deliveringplant .
        wa_mat_sales-matkl    = wa8-SalesOrg1MaterialGroup.
        wa_mat_sales-sktof   = wa8-SalesOrg1CashDiscount.
        wa_mat_sales-versg       = wa8-SalesOrg2MatiStatisticsGrp.
        wa_mat_sales-kondm    = wa8-SalesOrg2MaterialPriceGroup.
        wa_mat_sales-bonus    =   wa8-SalesOrg2VolumeRebateGroup.
        wa_mat_sales-ktgrm    = wa8-SalesOrg2AcctAssmtGrpMt.
        wa_mat_sales-mtpos_mara  = wa8-SalesOrg2ItemCategoryGroup.
        wa_mat_sales-mtpos    =  wa8-SalesOrg2ItemCategoryGroup.
        wa_mat_sales-pmatn   =  wa8-salesorg2pricingrefmati.
        wa_mat_sales-prodh   = wa8-SalesOrg2ProductHierarchy.
        wa_mat_sales-provg    = wa8-SalesOrg2CommissionGroup.
        wa_mat_sales-mvgr1  = wa8-SalesOrg2Materialgrp1.
        wa_mat_sales-mvgr2  = wa8-SalesOrg2Materialgrp2.
        wa_mat_sales-mvgr3  = wa8-SalesOrg2Materialgrp3.
        wa_mat_sales-mvgr4  = wa8-SalesOrg2Materialgrp4.
        wa_mat_sales-mvgr5  = wa8-SalesOrg2Materialgrp5.
        wa_mat_sales-xgchp      = wa8-SalesGeneralApprBatch      .
        wa_mat_sales-xchpf      = wa8-SalesGeneralBatchManagement.
        wa_mat_sales-xchpf1     = wa8-SalesGeneralBatchManagPlant.
        wa_mat_sales-brgew     = wa8-SalesGeneralGrossWeight .
        wa_mat_sales-ntgew     = wa8-SalesGeneralNetWeight    .
        wa_mat_sales-mtvfp    = wa8-SalesGeneralAvailabilityCheck.
        wa_mat_sales-mfrgr     = wa8-SalesGeneralMaterialFreight.
        wa_mat_sales-atpkz    = wa8-SalesGeneralReplacementPart.
        wa_mat_sales-nrfhg     = wa8-SalesGeneralQualFreeGood .
        wa_mat_sales-tragr   = wa8-SalesGeneralTransGrp.
        wa_mat_sales-ladgr    = wa8-SalesGeneralLoadingGrp.
        wa_mat_sales-vrvez    = wa8-SalesGeneralSetupTime.
        wa_mat_sales-vbeaz    = wa8-SalesGeneralProcTime.
        wa_mat_sales-vbamg    =  ''.
        wa_mat_sales-prctr   = wa8-SalesGeneralProfitCenter.
        wa_mat_sales-sernp  = wa8-SalesGeneralSerialNoProfile.
        wa_mat_sales-fprfm    = wa8-SalesGeneralDistProf.
        wa_mat_sales-xmcng  = wa8-SalesGeneralNegStock.
        wa_mat_sales-iuid_relevant = wa8-SalesGeneralIUIDRelevant.
        wa_mat_sales-uid_iea   = wa8-SalesGeneralExtAllocation.
        wa_mat_sales-iuid_type   = wa8-SalesGeneralIuidType.
        wa_mat_sales-serlv       = wa8-internationalexporttaskid .
        wa_mat_sales-magrv       =      ''    .   .
        wa_mat_sales-steuc       =  wa8-internationalexportcontrolcode  .
        wa_mat_sales-gewei       =      ''.  .

        SELECT SINGLE * FROM zmat_salesdata WITH PRIVILEGED ACCESS AS a
WHERE taskid = @wa_mat_sales-taskid INTO @DATA(oldatazmat_salesdata).

        IF selectedaction  = 'Change Material' .
          wa_mat_sales-created_by      = oldatazmat_salesdata-created_by.
          wa_mat_sales-created_date    = oldatazmat_salesdata-created_date.
          wa_mat_sales-created_time    = oldatazmat_salesdata-created_time.
          wa_mat_sales-login_id        = oldatazmat_salesdata-login_id.
        ELSE.
          wa_mat_sales-created_by      = userid.
          wa_mat_sales-created_date    = sy-datum.
          wa_mat_sales-created_time    = SY-timlo.
          wa_mat_sales-login_id        = respo-userid.
        ENDIF.

        wa_mat_sales-change_by          =     userid.
        wa_mat_sales-change_date        =     sy-datum.
        wa_mat_sales-change_time        =     SY-timlo.
        wa_mat_sales-change_login_id    =    respo-userid.


        MODIFY zmat_salesdata FROM @WA_Mat_Sales .
        CLEAR:wa8,WA_Mat_Sales.
      ENDLOOP.





      DATA WA_Mat_WareHouse TYPE zmat_wmdata .
      LOOP AT respo-WareHouse INTO DATA(wa9).
        IF wa9-Warehouse1TaskID IS INITIAL .
          WA_Mat_WareHouse-taskid  = lv_nr.
        ELSE.
          WA_Mat_WareHouse-taskid    = wa9-Warehouse1TaskID.
        ENDIF.
        WA_Mat_WareHouse-matnr    = wa9-warehouse1material.
        WA_Mat_WareHouse-maktx       = wa9-warehouse1description.
        WA_Mat_WareHouse-werks       = wa9-warehouse1plant.
        WA_Mat_WareHouse-meins       = wa9-warehouse1uom.
        WA_Mat_WareHouse-stoff       = wa9-warehouse1warehouseno.
        WA_Mat_WareHouse-lvsme       = wa9-warehouse1wmunit.
        WA_Mat_WareHouse-brgew       = wa9-warehouse1grossweight.
        WA_Mat_WareHouse-gewei       = wa9-Warehouse1UOM.
        WA_Mat_WareHouse-ausme       = wa9-Warehouse1Unitofissue.
        WA_Mat_WareHouse-volum       = wa9-Warehouse1Volume.
        WA_Mat_WareHouse-voleh       = wa9-Warehouse1UOM.
        WA_Mat_WareHouse-vomem       = ''.
        WA_Mat_WareHouse-mkapv       = wa9-Warehouse1Capacity.
        WA_Mat_WareHouse-plkpt       = wa9-Worehouse1PickingStorage.
        WA_Mat_WareHouse-xchpf1      = wa9-Worehouse1BatchManagement.
        WA_Mat_WareHouse-xchpf       = wa9-Worehouse1BatchManagementPlant.
        WA_Mat_WareHouse-ltkza       = wa9-Warehouse1StockRemoval.
        WA_Mat_WareHouse-ltkze       = wa9-Warehouse1StockPlacement.
        WA_Mat_WareHouse-lgbkz       = wa9-Warehouse1StorageSection.
        WA_Mat_WareHouse-block       = wa9-Warehouse1BulkStorage.
        WA_Mat_WareHouse-bsskz       = ''.
        WA_Mat_WareHouse-l2skr       = wa9-Warehouse12StepPicking.
        WA_Mat_WareHouse-kzmbf       = wa9-Warehouse1MessagetoInv.
        WA_Mat_WareHouse-kzzul       = wa9-Warehouse1AllowAddn.
        WA_Mat_WareHouse-lhmg1       = ''.
        WA_Mat_WareHouse-lhmg2       = ''.
        WA_Mat_WareHouse-lhmg3       = ''.
        WA_Mat_WareHouse-lhme1       = ''.
        WA_Mat_WareHouse-lety1       = ''.
        WA_Mat_WareHouse-stgetype    = wa9-Warehouse2StgeType.
        WA_Mat_WareHouse-stoff2      =  wa9-warehouse2warehouseno.

        SELECT SINGLE * FROM zmat_wmdata WITH PRIVILEGED ACCESS AS a
WHERE taskid = @WA_Mat_WareHouse-taskid INTO @DATA(oldatazmat_wmdata).

        IF selectedaction  = 'Change Material' .
          WA_Mat_WareHouse-created_by      = oldatazmat_wmdata-created_by.
          WA_Mat_WareHouse-created_date    = oldatazmat_wmdata-created_date.
          WA_Mat_WareHouse-created_time    = oldatazmat_wmdata-created_time.
          WA_Mat_WareHouse-login_id        = oldatazmat_wmdata-login_id.
        ELSE.
          WA_Mat_WareHouse-created_by      = userid.
          WA_Mat_WareHouse-created_date    = sy-datum.
          WA_Mat_WareHouse-created_time    = SY-timlo.
          WA_Mat_WareHouse-login_id        = respo-userid.
        ENDIF.

        WA_Mat_WareHouse-change_by         = userid.
        WA_Mat_WareHouse-change_date       = sy-datum.
        WA_Mat_WareHouse-change_time       = SY-timlo.
        WA_Mat_WareHouse-change_login_id     = respo-userid.

        MODIFY zmat_wmdata FROM @WA_Mat_WareHouse .
        CLEAR:wa9,WA_Mat_WareHouse.
      ENDLOOP.



     DATA WA_zmat_atch_uplod TYPE zmat_atch_uplod .
     READ TABLE respo-BasicData  INTO DATA(TAS) INDEX 1.
       LOOP AT respo-aFiles INTO DATA(wa_ONUPLOAD).

        IF TAS-basicdatataskid1 IS INITIAL .
          WA_zmat_atch_uplod-taskid  = lv_nr.
        ELSE.
          WA_zmat_atch_uplod-taskid   = TAS-basicdatataskid1.
        ENDIF.

        WA_zmat_atch_uplod-attachment  = wa_ONUPLOAD-content.
        WA_zmat_atch_uplod-contentname  = wa_ONUPLOAD-filename.
        WA_zmat_atch_uplod-filename  = wa_ONUPLOAD-filename.
        WA_zmat_atch_uplod-mimetype  = wa_ONUPLOAD-mimetype.
        WA_zmat_atch_uplod-note  = wa_ONUPLOAD-programname.

        MODIFY zmat_atch_uplod FROM @WA_zmat_atch_uplod .
        CLEAR:wa_DELET,WA_zmat_deltask.

      ENDLOOP.


          DATA WA_zmat_qm_insp_se TYPE zmat_qm_insp_se .
       LOOP AT respo-tabledataarray1 INTO DATA(wa_QM_INSP).

        IF TAS-basicdatataskid1 IS INITIAL .
          WA_zmat_qm_insp_se-taskid  = lv_nr.
        ELSE.
          WA_zmat_qm_insp_se-taskid   = TAS-basicdatataskid1.
        ENDIF.

        WA_zmat_qm_insp_se-insptype  = wa_QM_INSP-insptype.
        WA_zmat_qm_insp_se-shorttext  = wa_QM_INSP-shorttext.
        WA_zmat_qm_insp_se-active  = wa_QM_INSP-active.


        MODIFY zmat_qm_insp_se FROM @WA_zmat_qm_insp_se .
        CLEAR:wa_DELET,WA_zmat_qm_insp_se.

      ENDLOOP.


      IF selectedaction  <> 'Change Material' .

        CONCATENATE  ' Data Saved Successfuly And Task ID No.'  lv_nr INTO json SEPARATED BY ' '.
      ELSE.
        READ TABLE respo-BasicData  INTO DATA(taskid) INDEX 1.
        lv_nr = taskid-basicdata2taskid1.
        CONCATENATE  'Task ID No.'  lv_nr  'Update Successfuly' INTO json SEPARATED BY ' '.

      ENDIF.

    ENDIF.

    response->set_text( json  )  .

  ENDMETHOD.
ENDCLASS.
