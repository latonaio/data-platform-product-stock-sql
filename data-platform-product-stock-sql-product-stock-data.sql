CREATE TABLE `data_platform_product_stock_product_stock_data`
(
    `Product`                      varchar(40) NOT NULL,
    `BusinessPartner`              int(12) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `ProductStock`                 float(15) NOT NULL,
    
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductStockProductStockDataProductBPPlant_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
