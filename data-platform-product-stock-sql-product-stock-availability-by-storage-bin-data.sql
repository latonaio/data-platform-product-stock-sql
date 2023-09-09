CREATE TABLE `data_platform_product_stock_availability_by_storage_bin_data`
(
    `Product`                                varchar(40) NOT NULL,
    `BusinessPartner`                        int(12) NOT NULL,
    `Plant`                                  varchar(4) NOT NULL,
    `StorageLocation`                        varchar(4) NOT NULL,
    `StorageBin`                             varchar(10) NOT NULL,
    `SupplyChainRelationshipID`              int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`      int(6) NOT NULL,
    `SupplyChainRelationshipDeliveryPlantID` int(4) NOT NULL,
    `Buyer`                                  int(12) NOT NULL,
    `Seller`                                 int(12) NOT NULL,
    `DeliverToParty`                         int(12) NOT NULL,
    `DeliverFromParty`                       int(12) NOT NULL,
    `DeliverToPlant`                         varchar(4) NOT NULL,
    `DeliverFromPlant`                       varchar(4) NOT NULL,
    `ProductStockAvailabilityDate`           date NOT NULL,
    `AvailableProductStock`                  float(15) NOT NULL,
    `CreationDate`                           date NOT NULL,
    `CreationTime`                           time NOT NULL,
    `LastChangeDate`                         date NOT NULL,
    `LastChangeTime`                         time NOT NULL,
  
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`, `SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `ProductStockAvailabilityDate`),

    CONSTRAINT `DPFMProductStockAvailabilityByStorageBinDataProduct_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMProductStockAvailabilityByStorageBinDataStorageBin_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`) REFERENCES `data_platform_storage_bin_general_data` (`BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`),
    CONSTRAINT `DPFMProductStockAvailabilityByStorageBinDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_scr_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DPFMProductStockAvailabilityByStorageBinDataSCRDeliveryID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_scr_delivery_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
    -- CONSTRAINT `DPFMProductStockAvailabilityByStorageBinDataSCRDeliveryPlantID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`) REFERENCES `data_platform_scr_delivery_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`)
    -- too long

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
