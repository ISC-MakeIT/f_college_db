CREATE TABLE IF NOT EXISTS `photos` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `photo_path` TEXT COMMENT '画像の場所',
    `product_image` BOOLEAN COMMENT '作品実画像の場合1(true)',
    PRIMARY KEY (`id`),
    CONSTRAINT `photos_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品画像一覧';
