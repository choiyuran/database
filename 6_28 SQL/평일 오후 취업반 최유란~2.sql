drop table book purge;
create table childBook(
    title               varchar2(50), 
    author              varchar2(30),
    publisher           varchar2(30),
    publish_date        date,
    price               number
);
select * from tab;
desc childBook;

insert into childBook values('꽁꽁꽁 캠핑','윤정주','책읽는곰','2023-06-27', 14000);
insert into childBook values('안녕 팝콘','이준혁','미디어창비','2022-12-05', 15000);
insert into childBook values('오싹오싹 편의점','김영진','책읽는곰','2023-05-22', 14000);
insert into childBook values('건전지 엄마','강인숙','창비','2023-04-21', 15000);
insert into childBook values('알사탕','백희나','책읽는곰','2017-03-25', 12000);
commit;
select * from childBook;

-- 건전지 엄마 책 가격을 13500으로 수정
update childBook set price=13500 where title='건전지 엄마';

-- 책 가격이 15000원 이상인 책
select * from childBook where price >= 15000;
-- 책 가격순으로 내림차순
select * from childBook order by price desc;
-- 책 제목순으로 오름차순
select * from childBook order by title;
-- 출판일을 기준으로 최신순
select * from childBook order by publish_date desc;
-- 출판사가 책읽는곰만 조회
select * from childBook where publisher='책읽는곰';
