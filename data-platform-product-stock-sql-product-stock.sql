CREATE TABLE `data_platform_product_stock_product_stock_data`
(
    `BusinessPartner`              varchar(10) NOT NULL,
    `Product`                      varchar(40) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `StorageLocation`              varchar(4) NOT NULL,
    `Batch`                        varchar(10) DEFAULT NULL,
    `OrderID`                      varchar(10) DEFAULT NULL, 
    `OrderItem`                    varchar(6) DEFAULT NULL, 
    `Project`                      varchar(24) DEFAULT NULL,
    `InventoryStockType`           varchar(2) DEFAULT NULL,
    `InventorySpecialStockType`    varchar(2) DEFAULT NULL,
    `ProductStock`                 varchar(17) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `StorageLocation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
