CREATE TABLE `data_platform_product_stock_product_stock_by_order_data`
(
    `Product`                                varchar(40) NOT NULL,
    `OrderID`                                int(16) NOT NULL,
	`OrderItem`    			                 int(6) NOT NULL,
    `SupplyChainRelationshipID`              int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`      int(6) NOT NULL,
    `SupplyChainRelationshipDeliveryPlantID` int(4) NOT NULL,
    `Buyer`                                  int(12) NOT NULL,
    `Seller`                                 int(12) NOT NULL,
    `DeliverToParty`                         int(12) NOT NULL,
    `DeliverFromParty`                       int(12) NOT NULL,
    `DeliverToPlant`                         varchar(4) NOT NULL,
    `DeliverFromPlant`                       varchar(4) NOT NULL,
    `InventoryStockType`                     varchar(3) NOT NULL,
    `ProductStock`                           float(15) NOT NULL,
    `CreationDate`                           date NOT NULL,
    `CreationTime`                           time NOT NULL,
    `LastChangeDate`                         date NOT NULL,
    `LastChangeTime`                         time NOT NULL,
    
    PRIMARY KEY (`Product`, `OrderID`, `OrderItem`, `SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `InventoryStockType`),

    CONSTRAINT `DPFMProductStockByOrderDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DPFMProductStockByOrderDataOrderItem_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DPFMProductStockByOrderDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_scr_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DPFMProductStockByOrderDataSCRDeliveryID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_scr_delivery_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
    CONSTRAINT `DPFMProductStockByOrderDataSCRDeliveryPlantID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`) REFERENCES `data_platform_scr_delivery_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
