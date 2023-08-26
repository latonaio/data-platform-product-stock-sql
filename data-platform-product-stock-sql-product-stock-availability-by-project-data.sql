CREATE TABLE `data_platform_product_stock_availability_by_project_data`
(
    `Product`                                varchar(40) NOT NULL,
    `Project`                                int(16) NOT NULL,
	`WBSElement`			                 int(8) NOT NULL,
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
  
    PRIMARY KEY (`Product`, `Project`, `WBSElement`, `SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `ProductStockAvailabilityDate`),

    CONSTRAINT `DPFMProductStockAvailabilityByProjectDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DPFMProductStockAvailabilityByProjectDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMProductStockAvailabilityByProjectDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_scr_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DPFMProductStockAvailabilityByProjectDataSCRDeliveryID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_scr_delivery_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
    CONSTRAINT `DPFMProductStockAvailabilityByProjectDataSCRDeliveryPlantID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`) REFERENCES `data_platform_scr_delivery_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
