CREATE TABLE IF NOT EXISTS `products` (
    `id` SMALLINT NOT NULL AUTO_INCREMENT COMMENT '作品番号',
    `title` VARCHAR(50) NOT NULL DEFAULT "" COMMENT '作品名',
    `concept` VARCHAR(250) NOT NULL DEFAULT "" COMMENT '作品コンセプト',
    `genre` VARCHAR(8) NOT NULL DEFAULT "" COMMENT 'fashionもしくはbeauty',
    `representative_student_id` SMALLINT NOT NULL COMMENT '代表者学生ID',
    `message` VARCHAR(250) NOT NULL DEFAULT "" COMMENT '学生から作品へのメッセージ',
    `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (`id`),
    CONSTRAINT `students_to_id` FOREIGN KEY (`representative_student_id`) REFERENCES `students` (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品一覧';