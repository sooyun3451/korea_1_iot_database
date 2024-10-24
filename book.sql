use springboot_db;

create table book(
	id bigint primary key auto_increment,
    writer varchar(100),
    title varchar(150),
    content varchar(550),
    category enum('NOTICE', 'FREE', 'QNA', 'EVENT')
);

select * from book;
