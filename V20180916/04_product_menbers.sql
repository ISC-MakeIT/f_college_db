CREATE TABLE `product_menbers` (
    `product_id` SMALLINT NOT NULL COMMENT '作品番号',
    `student_id` SMALLINT NOT NULL COMMENT '学生ID',
    CONSTRAINT `product_menbers_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `product_menbers_to_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON UPDATE CASCADE ON DELETE CASCADE
)DEFAULT CHARSET=utf8mb4 COMMENT='チーム構成一覧';