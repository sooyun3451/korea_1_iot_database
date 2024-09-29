# 학교 관리 프로그램 

/*
요구사항 
school_db 데이터베이스 생성 

학생(Students)테이블: 학생 ID, 이름, 전공, 입학년도를 포함 
교수(Professors)테이블: 교수 ID, 이름, 학과, 사무실 위치를 포함 
강의(Courses)테이블: 강의 ID, 강의명, 담당 교수 ID, 학점 수를 포함 
수강(Enrollments)테이블: 수강 ID, 학생 ID, 강의 ID, 수강년도, 학기를 포함 

각 테이블의 ID는 기본 키로 설정 
교수 ID는 가으이 테이블에서 외래 키로 설정되어야 하며, 교수와 강의 사이의 관계 작성 
학생 ID와 강의 ID는 수강 테이블에서 외래 키로 설정되어야 하며, 학생, 강의, 수강 사이의 다대다 관계 작성
*/

-- Students
insert into students values (1, 'Alice', 'Computer Science', 2020);
insert into students values (2, 'Bob', 'Mathmatics', 2021);
insert into students values (3, 'Charlie', 'Physics', 2022);

-- Professors
insert into Professors values (1, 'Dr. Smith', 'Computer Science', 'Room 101');
insert into Professors values (2, 'Dr. Johnson', 'Mathematics', 'Room 102');
insert into Professors values (3, 'Dr. Williams', 'Physics', 'Room 103');

-- Courses
insert into Courses values (1, 'Introduction to Programming', 1, 3);
insert into Courses values (2, 'Calculus', 2, 4);
insert into Courses values (3, 'Mechanics', 3, 4);

-- Enrollments
insert into Enrollments values (1, 1, 1, 2023, 1);
insert into Enrollments values (2, 2, 2, 2023, 1);
insert into Enrollments values (3, 3, 3, 2023, 1);

/*
	전공이 컴퓨터 과학인 학생들의 이름과 입학년도를 조회하는 SQL 명령문을 작성 
    담당 교수 ID가 2인 강의의 강의명과 학점 수를 조회하는 SQL 명령문을 작성 
    2023년도 1학기에 수강하는 학생들의 목록을 조회하는 SQL 명령문을 작성 (학생ID와 이름을 포함)
*/