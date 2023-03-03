CREATE TABLE `data_platform_product_stock_by_batch_data`
(
    `BusinessPartner`              int(12) NOT NULL,
    `Product`                      varchar(40) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `Batch`                        varchar(10) NOT NULL,
--  `OrderID`                      int(16) DEFAULT NULL, 
--  `OrderItem`                    int(6) DEFAULT NULL, 
--  `Project`                      varchar(24) DEFAULT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `ProductStock`                 float(15) NOT NULL,
    
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `Batch`),

    CONSTRAINT `DataPlatformProductStockProductStockByBatchData_fk` FOREIGN KEY (`BusinessPartner`, `Product`, `Plant`) REFERENCES `data_platform_product_stock_product_stock_data` (`BusinessPartner`, `Product`, `Plant`),
    CONSTRAINT `DataPlatformProductStockProductStockByBatchDataBatch_fk` FOREIGN KEY (`BusinessPartner`, `Product`, `Plant`, `Batch`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Product`, `Plant`, `Batch`)
--  CONSTRAINT `DataPlatformProductStockProductStockDataOrderItem_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
--  CONSTRAINT `DataPlatformProductStockProductStockDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
