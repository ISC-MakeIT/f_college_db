CREATE TABLE `photos` (
    `product_id` SMALLINT NOT NULL COMMENT '作品番号',
    `photo_url` TEXT NOT NULL DEFAULT "" COMMENT 'S3上画像URL',
    KEY `fk_to_product_id` (`product_id`),
    CONSTRAINT `photos_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品画像一覧';