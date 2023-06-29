-- 테이블 삭제 시 휴지통에 안들어가고 바로 삭제
drop table student purge;
-- f5 전체 실행

create table student (
    name        varchar2(50),
    score       number
);

select * from tab;
desc student;
select * from student;

insert into student values('이지은', 95);
insert into student (name) values('홍진호');
insert into student values('김지수', 96);

update student set score = 22 where name = '홍진호';

select * from student where score >= 90;
select * from student order by score asc;
select * from student order by score desc;
select * from student order by name;
select * from student order by name desc;
commit;