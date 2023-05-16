CREATE TABLE `data_platform_product_stock_product_stock_by_batch_data`
(
    `Product`                      varchar(40) NOT NULL,
    `BusinessPartner`              int(12) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `Batch`                        varchar(10) NOT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `ProductStock`                 float(15) NOT NULL,
    
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `Batch`),

    CONSTRAINT `DataPlatformProductStockProductStockByBatchData_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
