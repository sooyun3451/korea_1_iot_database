### 스토어드 프로시저 예제 ###

# 1. case문 활용 

# 총 구매액 
# 1500 이상 - 최우수고객
# 1000 ~ 1499 - 우수고객
# 1 ~ 999 - 일반 고객 
# 0이하 (구매한적 X) - 일반 회원 
use market_db;
select * from buy;

select M.mem_id, M.mem_name, sum(B.price * B.amount) as '총 구매액',
	case 
		when (sum(B.price * B.amount) >= 1500) then '최우수 고객'
        when (sum(B.price * B.amount) >= 1000) then '우수 고객'
		when (sum(B.price * B.amount) >= 1) then '일반 고객'
	else
		'일반 회원'
	end '회원 등급' # case문을 회원 등급 열(컬럼)으로 생성 
from member M
	left outer join buy B
    on M.mem_id = B.mem_id
group by M.mem_id
order by sum(B.price * B.amount) desc;