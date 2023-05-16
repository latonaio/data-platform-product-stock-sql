CREATE TABLE `data_platform_product_stock_product_stock_availability_data`
(
    `Product`                      varchar(40) NOT NULL,
    `BusinessPartner`              int(12) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `ProductStockAvailabilityDate` date NOT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `AvailableProductStock`        float(15) NOT NULL,
  
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `ProductStockAvailabilityDate`),
    
    CONSTRAINT `DataPlatformProductStockAvailabilityData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_stock_product_stock_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
