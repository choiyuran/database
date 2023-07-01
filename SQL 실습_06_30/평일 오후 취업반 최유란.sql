drop table product cascade constraints purge;
-- 시퀀스 삭제
drop sequence product_seq;

-- 시퀀스 생성
create sequence product_seq             -- product 테이블에서 사용할 시퀀스 생성
    start with 1                        -- 1부터 시작해서
    maxvalue 99999                      -- 최대값 99999까지
    increment by 1                      -- 1씩 증가한다
    nocache                             -- 이전 값 기억 x
    nocycle;                            -- 최대값 도달시 처음부터 다시 x

create table product (
    idx         number              default product_seq.nextval primary key,
    name        varchar2(100)       unique,
    price       number              check(price >= 100),
    expDate     date                check(expDate > to_date('2023/07/01', 'YYYY/MM/DD')),
    memo        varchar2(1000)      not null
);
    
insert into product(name, price, expDate, memo) values('초코파이', 3500, '23/12/31', '초코파이 12p');
insert into product(name, price, expDate, memo) values('몽쉘', 4500, '23/12/31', '몽쉘 12p');
insert into product(name, price, expDate, memo) values('페레로로쉐', 1000, '23/12/31', '페레로로쉐 3p');
insert into product(name, price, expDate, memo) values('서울우유 200ml', 1200, '23/06/30', '서울우유 팩');       -- 에러

update product set price = 1200 where idx = 4;

select * from product;
