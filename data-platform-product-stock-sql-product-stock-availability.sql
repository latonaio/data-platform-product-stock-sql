CREATE TABLE `data_platform_product_stock_product_stock_availability_data`
(
    `BusinessPartner`              varchar(10) NOT NULL,
    `Product`                      varchar(40) NOT NULL,
    `StockConfirmationPlant`       varchar(4) NOT NULL,
    `StockAvailabilityDate`        varchar(80) NOT NULL,
    `ProductStock`                 varchar(17) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Product`, `StockConfirmationPlant`, `StockAvailabilityDate`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
