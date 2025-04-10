-- ==============================
-- LIMIT
-- ==============================
-- LIMIT 절은 SELECT문의 결과 집합에서 반환할 행의 수를 제한하는데 사용된다.
-- Top-n분석, 페이징 처리에 응용할 수 있다.

# LIMIT [offset,] row_count;
-- offset : 시작할 행의 번호(인덱스 체계)
-- row_count : 이후 행부터 반환 받을 행의 개수
-- 전체 행 조회
select
    menu_code,
    menu_name,
    menu_price
from
    tbl_menu
    order by
        menu_price desc;
 -- 2번 행부터 5번 행까지 조회
select
    menu_code,
    menu_name,
    menu_price
from
    tbl_menu
order by
    menu_price desc
 limit 1,5;
 -- 상위 다섯번째 행만 조회
select
    menu_code,
    menu_name,
    menu_price
from
    tbl_menu
order by
    menu_price desc ,
    menu_name
limit 5;
 -- 페이징 처리
 -- 1페이지
select
    *
from tbl_menu
order by
    menu_code
limit 0,5;
 -- 2페이지
select
    *
from tbl_menu
order by
    menu_code
limit 5,5;
 --








