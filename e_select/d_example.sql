use `korea_db`;

# 이름(name)으로 알파벳 순 정렬 - order by
select name from `members`
order by name;

# 3번째부터 2개의 행 조회 - limit
select * from `members`
limit 2 offset 3;

-- offset 키워드는 생략 후 콤마 사용 가능 
select * from `members`
limit 2,3;

# 포인트(points)가 가장 높은 상위 3명의 회원 조회 - limit
select name, points  from `members`
order by points desc limit 3;

# 서로 다른 등금(grade) 목록 조회 - distinct
select distinct grade from `members`;

# 지역별(area_code) 최대 포인트 조회 - group by
select area_code, max(points) as max_points 
from `members`
group by area_code;

# 성별(gender)에 따른 평균 포인트 조회 - group by
select gender, avg(points) as avg_points 
from `members`
group by gender;

# 평균 포인트가 250 이상인 등급만 조회 - having 
select grade, avg(points) as avg_points
from `members`
group by grade 
having avg(points) >= 250;

# 등급별 최소 포인트가 100이상인 그룹 조회 - having 
select grade, min(points) as min_points
from `members`
group by grade
having min(points) > 100;
