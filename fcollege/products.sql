CREATE TABLE `products` (
    `product_id` INT NOT NULL COMMENT 'プロダクトの番号',
    `concept` varchar(255) NOT NULL COMMENT 'プロダクトコンセプト',
``    `image_url` TEXT NOT NULL COMMENT '画像のurl',
``    `likes` INT NOT NULL COMMENT 'いいねの数',
``    `category` VARCHAR(30) NOT NULL COMMENT 'ファションかビューティー',
``    `main_image_url` TEXT NOT NULL COMMENT 'プロダクトのメイン画像のurl',
    `product_title` varchar(50) NOT NULL COMMENT 'プロダクトタイトル',
``    `creaters` json NOT NULL COMMENT 'メンバー'
    PRIMARY KEY (`product_id`)
)DEFAULT CHARSET=utf8mb4;


/*
`image_url`と`main_image_url`が似てる
`likes`が分かりづらい
i画像の持ち方
 プロダクトとプロダクトメンバーの関係性
 →プロダクトid1のメンバーは誰でリーダーはだれ、コンセプトとタイトルはどうなる
 →実際のsql文はどうなる
 カラム名にcreatersを使うならcreatersテーブルがあってもいい？そもそもこのカラムいる？グループidみたいな持ち方できない？
*/