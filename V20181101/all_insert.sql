CREATE TABLE IF NOT EXISTS `students` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `student_id` SMALLINT UNIQUE  NOT NULL COMMENT '学生ID',
    `name` VARCHAR(50) NOT NULL COMMENT '氏名',
    `class` VARCHAR(30) COMMENT '学年学科',
    PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='学生一覧';


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



CREATE TABLE IF NOT EXISTS `photos` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `photo_path` TEXT COMMENT '画像の場所',
    PRIMARY KEY (`id`),
    CONSTRAINT `photos_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='作品画像一覧';



CREATE TABLE IF NOT EXISTS `product_members` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `product_number` INT NOT NULL COMMENT '作品番号（重複あり）',
    `student_id` SMALLINT NOT NULL COMMENT '学生ID',
    `leader_flg` BOOLEAN COMMENT '班長=>1, それ以外=>0',
    PRIMARY KEY (`id`),
    CONSTRAINT `product_members_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
    CONSTRAINT `product_members_to_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON UPDATE CASCADE ON DELETE CASCADE
)DEFAULT CHARSET=utf8mb4 COMMENT='チーム構成一覧';



CREATE TABLE IF NOT EXISTS `vote` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `number_of_votes` INT COMMENT '作品ごとの集計',
    PRIMARY KEY (`id`),
    CONSTRAINT `vote_to_product_id` FOREIGN KEY `vote` (`product_id`) REFERENCES `products` (`product_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='投票一元管理テーブル';

CREATE TABLE IF NOT EXISTS `profile_photos` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'サロゲートキー',
    `product_id` INT NOT NULL COMMENT '作品管理番号',
    `profile_photo_path` TEXT COMMENT 'クリエイターの顔写真の場所',
    PRIMARY KEY (`id`),
    CONSTRAINT `profile_photos_to_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
)DEFAULT CHARSET=utf8mb4 COMMENT='クリエイターの顔写真画像一覧';