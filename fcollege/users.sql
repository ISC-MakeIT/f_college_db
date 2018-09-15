CREATE TABLE `students` (
    `student_id` INT NOT NULL OUT_INCREMENT COMMENT '学生の番号',
    `name` VARCHAR(20) NOT NULL COMMENT '氏名',
    `major` VARCHAR(30) NOT NULL COMMENT '専攻',
    `grade` VARCHAR(30) NOT NULL COMMENT '学年',
    PRIMARY KEY (`student_id`)
)DEFAULT CHARSET=utf8mb4;

/*
CREATE TABLE `students` (
`student_id` INT NOT NULL AUTO_INCREMENT COMMENT '学生番号',
`product_id` INT NOT NULL ,
`name` VARCHAR(20) NOT NULL COMMENT '氏名',
`profile_photo_url` TEXT NOT NULL,
`message` varchar(255) NOT NULL,
`magor` varchar(20) NOT NULL COMMENT '学年',
`grade` varchar(30) NOT NULL COMMENT '学科',
`hierarchy` varchar(20) NOT NULL COMMENT '求むいい名前',
PRIMARY KEY (`student_id`),
CONSTRAINT `students_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
KEY (`product_id`)
) DEFAULT CHARSET=utf8mb4
*/