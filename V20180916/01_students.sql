CREATE TABLE `students` (
    `student_id` SMALLINT NOT NULL AUTO_INCREMENT COMMENT '学生ID',
    `student_name` VARCHAR(30) NOT NULL COMMENT '氏名',
    `grade` VARCHAR(30) NOT NULL COMMENT '学年',
    `major` VARCHAR(30) NOT NULL COMMENT '専攻',
    `message` VARCHAR(100) NOT NULL DEFAULT "" COMMENT '学生からの一言',
    `profile_photo_url` TEXT NOT NULL DEFAULT "" COMMENT '顔写真',
    PRIMARY KEY (`student_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='学生一覧';