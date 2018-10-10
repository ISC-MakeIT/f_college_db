CREATE TABLE IF NOT EXISTS `vote` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'レコードを特定するためのもの',
    `voter_id` VARCHAR(16) NOT NULL COMMENT '投票者ID',
    `product_id` SMALLINT NOT NULL COMMENT 'プロダクトID',
    `lottery_num` SMALLINT(4) NOT NULL COMMENT '4ケタの抽選番号',
    PRIMARY KEY (`voter_id`, `product_id`),
    CONSTRAINT `vote_to_product_id` FOREIGN KEY `vote` (`product_id`) REFERENCES `products` (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='投票一元管理テーブル';