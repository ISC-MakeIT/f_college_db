CREATE TABLE IF NOT EXISTS `photos` (
    `product_id` SMALLINT NOT NULL COMMENT '作品番号',
    `photo_url` TEXT NOT NULL DEFAULT "" COMMENT 'S3上画像URL',
    KEY `index_to_product_id` (`product_id`),
    CONSTRAINT `photos_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品画像一覧';