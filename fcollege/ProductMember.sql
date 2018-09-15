CREATE TABLE `ProductMenbar` (
    `student_id` INT NOT NULL COMMENT '学生の番号',
``    `hierarchy` VARCHAR(20) NOT NULL COMMENT 'リーダーなのか',
    `product_id` INT NOT NULL COMMENT 'プロダクトの番号',
    FOREIGN KEY (`student_id`) REFERENCES students (`student_id`),
    FOREIGN KEY (`product_id`) REFERENCES products (`product_id`)
)DEFAULT CHARSET=utf8mb4;

/**
hierarchyって名前が分かりづらい

 */