CREATE TABLE `data_platform_product_stock_product_stock_availability_by_storage_bin_by_batch_data`
(
    `Product`                      varchar(40) NOT NULL,
    `BusinessPartner`              int(12) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `StorageLocation`              varchar(4) NOT NULL,
    `StorageBin`                   varchar(10) NOT NULL,
    `Batch`                        varchar(10) NOT NULL,
    `ProductStockAvailabilityDate` date NOT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `AvailableProductStock`        float(15) NOT NULL,
  
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`, `Batch`, `ProductStockAvailabilityDate`),
    
    CONSTRAINT `DataPlatformProductStockAvailabilityByStorageBinByBatchData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`) REFERENCES `data_platform_product_stock_product_stock_by_storage_bin_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
