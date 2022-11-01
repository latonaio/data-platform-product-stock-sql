CREATE TABLE `data_platform_product_stock_availability_data`
(
    `BusinessPartner`              int(12) NOT NULL,
    `Product`                      varchar(40) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `Batch`                        varchar(10) DEFAULT NULL,
    `OrderID`                      int(16) DEFAULT NULL, 
    `OrderItem`                    int(6) DEFAULT NULL, 
    `Project`                      varchar(24) DEFAULT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `ProductStockAvailabilityDate` date NOT NULL,
    `AvailableProductStock`        float(15) NOT NULL,
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `ProductStockAvailabilityDate`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
