### baseball_league를 사용한 조인 예제 ###
use baseball_league;
# 1. 내부 조인 
# 1-1. 타자인 선수와 해당 선수가 속한 팀 이름 가져오기 
select 
	P.name, T.name
from 
	players P
		inner join teams T
        on P.team_id = T.team_id
where 
	P.position in('타자');

# 1-2. 1990년 이후 창단된 팀의 선수 목록 가져오기 
select 
	P.name, T.name
from 
	players P
		inner join teams T
        on P.team_id = T.team_id
where 
	T.founded_year >= '1990';

# 2. 외부조인 
# 2-1. 모든 팀과 그 팀에 속한 선수 목록 가져오기 
select 
	T.name as team_name, P.name player_name
from 
	teams T
    left outer join players P
    on T.team_id = P.team_id;

# 2-2. 모든 선수와 해당 선수가 속한 팀 이름 가져오기 
select 
	P.name as player_name, T.name as team_name
from 
	players P
    left join teams T
    on P.team_id = T.team_id;

# 2-3. 모든 팀과 해당 팀에 속한 타자 목록 가져오기 
select
	T.name, P.name, P.position
from 
	teams T
    left outer join players P
    on T.team_id = P.team_id
where 
	P.position = '타자';