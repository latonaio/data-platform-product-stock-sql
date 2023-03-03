CREATE TABLE `data_platform_product_stock_product_stock_data`
(
    `BusinessPartner`              int(12) NOT NULL,
    `Product`                      varchar(40) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `ProductStock`                 float(15) NOT NULL,
    
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`),
    
    CONSTRAINT `DataPlatformProductStockProductStockDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformProductStockProductStockDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductStockProductStockDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
