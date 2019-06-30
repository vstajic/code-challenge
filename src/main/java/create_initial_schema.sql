create table users
(
    id        int(11)     not null auto_increment primary key,
    email     varchar(50) not null,
    name      varchar(50) not null,
    last_name varchar(50) not null,
    password  char(60)    not null,
    active    bit default b'' 0 '' not null,
    constraint email_UNIQUE
        unique (email)
);

CREATE TABLE roles
(
    id   int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role varchar(255) DEFAULT NULL
);

CREATE TABLE `user_role`
(
    `user_id` int(11) NOT NULL,
    `role_id` int(11) NOT NULL,
    PRIMARY KEY (`user_id`, `role_id`),
    UNIQUE KEY `UK_role` (`role_id`),
    CONSTRAINT `FK_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

