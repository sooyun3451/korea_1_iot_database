### DDL 문법 정리 ###

-- 데이터 베이스 --
# 1. 데이터베이스 생성(create)
CREATE DATABASE IF NOT EXISTS database_name;

# cf) 데이터베이스의 유무를 확인하고 오류를 방지하는 SQL문 
# 	, 존재하지 않을 경우에만 새로 생성 
-- if not exists 사용 
CREATE DATABASE IF NOT EXISTS database_name;

# 2. 데이터베이스 선택(use)
# : use 키워드를 사용하여 DB 선택 시 모든 SQL 명령어가 선택된 DB내에서 실행 
# , 스키마명을 더블클릭한 것과 동일함 
USE sys;
USE database_name;

# 3. 데이터베이스 삭제 
# : 데이터베이스 삭제 기능, 해당 작업은 실행 후 되돌릴 수 X 
DROP DATABASE database_name;

# 4. 데이터베이스 목록 조회 
# : 서버에 존재하는 모든 데이터베이스 목록을 확인 
# show databases;
SHOW DATABASES;

-- 테이블 --
# 1. 테이블 생성 (create table)
CREATE DATABASE IF NOT EXISTS example;
USE example;

# 테이블 생성 시 데이터베이스명이 필수는 X (오류방지를 위해 권장)
CREATE TABLE IF NOT EXISTS students ( 
	student_id INT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    major VARCHAR(100)
);

# 2. 테이블의 구조 조회 (describe, decs)
# 테이블 구조: 정의된 컬럼, 데이터 타입, 키 정보(제약조건) 등을 조회 가능 
# 기본 형태 
# describe 테이블명;
DESC students;

# field: 각 컬럼의 이름, type: 각 컬럼의 데이터 타입, Null: Null 허용 여부
# Key: 각 컬럼의 제약사항(키), Default: 기본값 지정, Extra: 제약사항-추가옵션 

-- 테이블 수정 --
# alter table
# : 이미 존재하는 테이블의 구조를 변경하는데 사용 
# > 컬럼 또는 제약조건을 추가, 수정, 삭제 

# - 컬럼 - 
# a) 컬럼 추가 add column 
# alter table 테이블명 add (column) 컬럼명 데이터타입 기타사항; 
ALTER TABLE `students`
ADD email VARCHAR(255);

DESC students;

# b) 컬럼 수정 modify (column)
# alter table 테이블명 modify (column) 컴럼명 새로운컬럼_데이터타입;
ALTER TABLE students
MODIFY email VARCHAR(100);

DESC students;

# c) 컬럼 삭제 drop (column)
# alter table 테이블명 drop 컬럼명;
ALTER TABLE students
DROP email;

DESC students;

# cf) if exists(존재하는 경우) / if not exists(존재하지 않는 경우)
# : 선택적 키워드, 테이블이 존재하는 경우에만 삭제를 수행 
# > 존재할 때만 삭제하기 때문에 오류 X
DROP TABLE IF EXISTS `lectures`;
DROP TABLE `students`;

# cf) 데이터베이스와 테이블을 동시 지정 
# : 테이블의 위치를 명확하게 전달하게 위해 .기호를 사용하여 경로 지정을 권장 
# > 데이터베이스.테이블명 

# cf) truncate
# : 테이블의 모든 데이터를 삭제하고 초기 상태로 되돌림 
# > 데이터베이스, 테이블의 구조는 삭제되지 X 

# vs drop
# drop: 전체 구조물을 삭제 