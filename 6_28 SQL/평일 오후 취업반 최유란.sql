create table phonebook(
-- varchar가변길이..?? 
-- char은 고정길이
    name VARCHAR2(100),
    age number,
    pnum VARCHAR2(20)
);
-- 만들어진 테이블 목록 확인
select * from tab;
--테이블 구조 확인
desc phonebook;

insert into phonebook values ('이지은', 31, '010-1111-1111');
insert into phonebook values ('홍진호', 42, '010-2222-2222');
insert into phonebook values ('홍길동', 29, '010-1234-5678');
insert into phonebook values ('나단비', 5, '010-3333-3333');

select * from phonebook;
select * from phonebook;

-- 폰북에 있는 이름만 불러옴
select name from phonebook;
-- 폰북에 있는 age coiumn만 불러옴
SELECT age from phonebook;

--가로는  row,record라고 부른다.
-- 첫줄에는 어떤게 들어가는지 보여준다. => column이라고 부른다.
-- 행과 테이블로 구성되어있다.
select name, age from phonebook;
--컬럼으로 조건을 걸어 불러올 수 있다.
select * from phonebook where name = '이지은';
select * from phonebook where age > 10;
select * from phonebook where age between 20 and 40;
select * from phonebook where name like '홍%';
COMMIT;