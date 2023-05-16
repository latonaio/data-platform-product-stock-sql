CREATE TABLE `data_platform_product_stock_product_stock_by_storage_bin_data`
(
    `Product`                      varchar(40) NOT NULL,
    `BusinessPartner`              int(12) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `StorageLocation`              varchar(4) NOT NULL,
    `StorageBin`                   varchar(10) NOT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `ProductStock`                 float(15) NOT NULL,
    
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`),

    CONSTRAINT `DataPlatformProductStockProductStockByStorageBinData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`) REFERENCES `data_platform_product_master_storage_bin_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
