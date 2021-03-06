CREATE TABLE IF NOT EXISTS `students` (
    `id` SMALLINT NOT NULL AUTO_INCREMENT COMMENT '学生ID',
    `name` VARCHAR(30) NOT NULL COMMENT '氏名',
    `grade` VARCHAR(30) COMMENT '学年',
    `major` VARCHAR(30) COMMENT '専攻',
    `part` VARCHAR(30) COMMENT '作品担当',
    `message` VARCHAR(100) COMMENT '学生からの一言',
    `profile_photo_url` TEXT COMMENT '顔写真',
    PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='学生一覧';