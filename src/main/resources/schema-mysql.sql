CREATE TABLE IF NOT EXISTS `users` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `first_name` varchar(500) NOT NULL,
                         `last_name` varchar(500) NOT NULL,
                         `email` varchar(1000) DEFAULT NULL,
                         `password` varchar(1000) NOT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='User registration table';
