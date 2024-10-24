# 고객 테이블(Customer)
# 고객 클래스(Customer)

create database example_orm;
use example_orm;

create table Customer(
	id int primary key auto_increment,
    name varchar(50),
    email varchar(50)
);