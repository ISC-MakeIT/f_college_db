CREATE TABLE IF NOT EXISTS `products` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT UNIQUE NOT NULL COMMENT '作品管理番号',
    `product_number` SMALLINT NOT NULL COMMENT '作品番号（重複あり）',
    `entry_order` SMALLINT COMMENT '出場順',
    `genre` VARCHAR(30) COMMENT '出場種目',
    `theme` VARCHAR(100) COMMENT '作品名',
    `concept` VARCHAR(250) COMMENT '作品コンセプト',
    `leader_id` SMALLINT NOT NULL COMMENT 'プロダクトオーナーID',
    PRIMARY KEY (`id`),
    CONSTRAINT `products_to_leader_id` FOREIGN KEY (`leader_id`) REFERENCES `students` (`student_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品一覧';