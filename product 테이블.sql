create table product(
    idx             number,
    name            varchar2(100),
    price           number,
    expiryDate      date,
    memo            varchar2(2000)
);

insert into product values(
    1,
    '코카콜라(캔) 190ml',
    900,
    '24/04/01',
    '코카콜라 캔 소형'
);

insert into product values(2, '코카콜라(PET) 500ml', 1500, '24/04/01', '코카콜라 PET 중형');
insert into product values(3, '코카콜라(PET) 1.5L', 2800, '24/04/01', '코카콜라 PET 대형');
insert into product values(4, '스프라이트(캔) 300ml', 1200, '24/05/01', '스프라이트 캔 소형');
insert into product values(5, '페레로로쉐(3입)', 3000, '23/10/05', '페레로로쉐 매장 입구 진열 품목');

select * from product;

-- 상품번호 순으로 정렬하기
select * from product order by idx;

-- 상품 이름 순으로 정렬하기
select * from product order by name;

-- 유통기한 순으로 정렬하기
select * from product order by expiryDate;

-- 상품의 가격이 1000원 미만인 상품만 조회하기
select * from product where price < 1000;

-- 상품 번호가 3번인 상품만 조회하기
select * from product where idx = 3;

-- 상품의 이름이 코카콜라를 포함하는 경우에만 조회하기
select * from product where name like '%코카콜라%';

-- 상품의 이름에 캔을 포함하는 경우에만 조회하기
select * from product where name like '%캔%';

-- 상품의 이름에 코카콜라를 포함하면서 가격이 1000원 이상인 상품만 조회하기
select * from product 
    where name like '%코카콜라%' 
    and price >= 1000;
    
-- 상품의 유통기한이 2024년 4월 1일부터 2024년 4월 30일 사이인 상품만 조회하기
select * from product 
    where expiryDate between '24/04/01' and '24/04/30';
    
-- 상품의 번호가 짝수인 경우만 불러오기/ mod(a, b) => a % b, 즉 나머지를 말한다
select * from product 
    where mod(idx, 2) = 0;
    
-- 수식 연산하기, dual은 가상 테이블
select 10 + 20 from dual;

-- 컬럼 이름에 별칭 부여하기(as를 사용해서 answer라는 별칭 부여)
select 12 * 23 as answer from dual;

commit;
    

