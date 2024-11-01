create database if not exists test;

use test;

create table if not exists books(
	id bigint primary key auto_increment,
    book_title varchar(100) not null,
    book_author varchar(100) not null,
    book_publication_year int not null,
    category enum('인문', '사회', '과학기술', '기타') not null
);


select * from books;

