CREATE TABLE IF NOT EXISTS `photos` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` SMALLINT NOT NULL COMMENT '作品番号',
    `photo_path` TEXT COMMENT '画像の場所',
    KEY `index_to_product_id` (`product_id`),
    CONSTRAINT `photos_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品画像一覧';