CREATE TABLE IF NOT EXISTS `profile_photos` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `profile_photo_path` TEXT COMMENT 'クリエイターの顔写真の場所',
    PRIMARY KEY (`id`),
    CONSTRAINT `profile_photos_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='クリエイターの顔写真画像一覧';