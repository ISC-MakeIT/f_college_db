CREATE TABLE IF NOT EXISTS `product_menbers` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `product_number` INT NOT NULL COMMENT '作品番号（重複あり）',
    `student_id` INT NOT NULL COMMENT '学生ID',
    `leader_flg` BOOLEAN COMMENT '班長=>1, それ以外=>0',
    PRIMARY KEY (`id`),
    CONSTRAINT `product_menbers_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
    CONSTRAINT `product_menbers_to_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
)DEFAULT CHARSET=utf8mb4 COMMENT='チーム構成一覧';