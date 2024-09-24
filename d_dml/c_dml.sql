# cf) ddl: create(생성), alter(수정), drop(삭제), truncate(데이터 삭제)

### DML (data manipulation language)
# : 데이터 관리 언어 
# >> 데이터를 삽입, 조회, 수정, 삭제 기능 (CRUD)

create database `company`;
use `company`;

create table `example01`(
	name varchar(100),
    age int,
    major varchar(100)
);

/*
	1. insert(데이터 삽입)
    : 테이블에 행 데이터(레코드)를 입력하는 키워드 
    
    기본 형식
    insert into 테이블명 (열1, 열2, ...)
    values(값1, 값2, ...);
    
    -- 열 이름을 생략할 경우 values 카워드 뒤 값들의 순서는 테이블 정의 시 지정한 열의 순서 & 갯수과 동일 
*/

# 컬럼명 지정 X
insert into `example01`
values ('홍길동', 23, '전공 A');

# 컬럼명 지정 O 
insert into `example01` (name, major, age)
values ('홍길서', '전공 B', 28);

# cf) 데이터 삽입 시 데이터 값 입력을 하지 않은 경우 
# 1. Null 허용 - 자동 null값 지정 
# 2. NOT NULL 지정 - 오류!

# cf) auto_increment
# : 열을 정의할 때 1부터 1씩 증가하는 값을 입력
# >> insert에서는 해당 열이 없다고 가정하고 입력!
# >> 해당 컬럼은 반드시 PK로 지정되어야 함 - 하나의 테이블에 한 번만 지정 가능!

create table `example02`(
	# 컬럼명 데이터타입 primary key auto_increment(PK와 auto_increment의 순서는 상관 X)
	id int auto_increment primary key,
    name varchar(100)
);

insert into `example02`
values 
	(null, '홍길동'),
	(null, '홍길서'),
	(null, '홍길남'),
	(null, '홍길북');
    
select * from `example02`;

# cf) auto_increment 최대값 확인 
select max(id) from `example02`;

# cf) 시작값 변경 
alter table `example02` auto_increment=100;
insert into `example02`
values(null, '최소윤');

select * from `example02`;

# cf) 다른 테이블의 데이터를 한번에 입력하는 구문 
# insert into 테이블명
# select ~~

create table `example03`(
	id int,
    name varchar(100)
);

insert into `example03`
select * from `example02`;
# 데이터를 받을 테이블과 전달할 테이블의 컬럼 비교가 필수! 

select * from `example03`;

/*
	2. 데이터 수정(update)
    : 테이블의 내용을 수정하기 위한 키워드 
    
    기본형태 
    update 테이블명 
    set 열1=값1, 열2=값2, ...
    (where 조건식);
    
    cf) where 조건이 없는 경우 해당 열(컬럼)의 데이터는 해당 값으로 모두 변경! 
*/

select * from `example02`;

update `example02`
set name='홍길동';

select * from `example03`;

-- safe update mode를 헤제하는 코드
set sql_safe_updates=0;

-- safe update mode를 설정하는 코드 
set sql_safe_updates=1;

use company;

update `example03`
set name='홍길서'
where mod(id, 2)=1;
-- mod(a, b)함수: 나눗셈에 대한 함수 
-- 위 코드에서는 id의 값을 2로 나눈 값이 1인지 여부를 확인 

select * from `example03`;

# cf) 여러 컬럼의 값을 한번에 설정하는 경우 ,(콤마)로 분리하여 나열 

/*
	3. delete: 데이터 삭제 
    : 테이블의 데이터를 삭제하기 위한 키워드 
    
    기본 형태 
    delete from 테이블명 
    where 조건식;
*/
delete from example03;
select * from example03;

insert into example02
value (null, '홍길동');

select * from example02;

delete from example02
where name='홍길동';