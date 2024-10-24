use springboot_db;

create table if not exists users(
	id bigint primary key auto_increment,
    email varchar(255) unique not null,
    password varchar(255) not null,
    created_at datetime not null,
    updated_at datetime 
);

select * from users;