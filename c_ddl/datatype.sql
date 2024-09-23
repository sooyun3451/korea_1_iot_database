### SQL의 데이터 형식 ###

# 정수형, 문자형, 논리형, 날짜형 

/*
	1. 정수형 
    : 숫자 데이터를 저장하는데 사용 
    >> 데이터 타입에 따라 메모리 사용 공간이 다름 
    
    a) tinyint 
		: 1byte(8비트) 
        : -128 ~ 127 
        EX) 나이, 성별코드 등 
        
	b) smallint
		: 2byte(16비트)
        : -32,768 ~ 32,767
        EX) 사원번호, 우편번호 등 
        
	c) int
		: 4byte(32비트)
        : 약 -21억 ~ 약 21억 
        EX) 일반적인 용도로 가장 많이 사용되는 정수형 타입 
        EX) 고객 ID, 주문 번호 등 
        
	d) bigint
		: 8byte(64비트)
        : 약 -900경 ~ 약 900경 
        EX) 금융권, 천문학 등에서 주로 사용 
*/

create database if not exists `example`;
use `example`;

create table `integer` (
	t_col tinyint,
    s_col smallint,
    i_col int,
    b_col bigint
);

# insert키워드: 데이터 삽입 
# Out of range오류: 해당 데이터 타입에 범위에 벗어나는 경우 발생 
insert into `integer`
value(127, 32767, 2000000000, 900000000000000);

# unsigned: 부호가 없는 정수
# > 정수의 시작을 0부터 시작
# > 범위는 그대로 인식 (EX. tinyint 0 ~ 255까지)
# EX) 키, 나이, 가격 등을 설정할 때 사용 (음수값이 없는 경우) 