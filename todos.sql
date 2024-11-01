use springboot_db;

create table if not exists todos(
	id bigint primary key auto_increment,
    task varchar(255) not null,
    status boolean not null
);

select * from todos;

