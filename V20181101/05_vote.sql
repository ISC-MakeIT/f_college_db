CREATE TABLE IF NOT EXISTS `vote` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `number_of_votes` INT COMMENT '作品ごとの集計',
    PRIMARY KEY (`id`),
    CONSTRAINT `vote_to_product_id` FOREIGN KEY `vote` (`product_id`) REFERENCES `products` (`product_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='投票一元管理テーブル';