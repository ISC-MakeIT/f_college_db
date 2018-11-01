CREATE TABLE IF NOT EXISTS `products` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` SMALLINT NOT NULL COMMENT '作品番号',
    `appearance` SMALLINT COMMENT '出場順',
    `genre` VARCHAR(30) COMMENT '出場種目',
    `theme` VARCHAR(100) COMMENT '作品名',
    `concept` VARCHAR(250) COMMENT '作品コンセプト',
    PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品一覧';