CREATE TABLE IF NOT EXISTS `students` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `student_id` SMALLINT UNIQUE  NOT NULL COMMENT '学生ID',
    `name` VARCHAR(50) NOT NULL COMMENT '氏名',
    `class` VARCHAR(30) COMMENT '学年学科',
    PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='学生一覧';