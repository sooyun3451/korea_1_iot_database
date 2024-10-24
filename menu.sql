use springboot_db;

create table if not exists Menu(
	id bigint auto_increment primary key, -- 메뉴 고유값
    name varchar(255) not null, -- 메뉴명
    description text not null, -- 메뉴설명
    price int not null check(price >= 0), -- 메뉴 가격(0이상으로 설정)
    isAvailable boolean not null default true, -- 메뉴 이용가능 여부 (기본값 true - 이용가능)
    category varchar(100) not null, -- 메뉴카테고리
    size varchar(50) default 'Regular', -- 메뉴 사이즈(기본값 Reqular - 보통)
    constraint check_category check (category in ('Food', 'Drink', 'Dessert'))
    -- 카테고리는 'Food', 'Drink', 'Dessert'로 제한 
);

select * from Menu;