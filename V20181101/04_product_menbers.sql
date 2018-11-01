CREATE TABLE IF NOT EXISTS `product_menbers` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品番号',
    `student_id` INT NOT NULL COMMENT '学生ID',
    `leader_flg` BOOLEAN COMMENT '班長=>1',
    PRIMARY KEY (`id`),
    CONSTRAINT `product_menbers_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
    CONSTRAINT `product_menbers_to_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
)DEFAULT CHARSET=utf8mb4 COMMENT='チーム構成一覧';