use springboot_db;

create table if not exists post(
	id bigint auto_increment primary key,
    title varchar(255) not null,
    content varchar(255) not null,
    author varchar(255) not null
);

create table if not exists comment(
	id bigint auto_increment primary key,
    post_id bigint,
    content varchar(255) not null,
    commenter varchar(255) not null,
    foreign key(post_id) references post(id) on delete cascade
);


select * from post;