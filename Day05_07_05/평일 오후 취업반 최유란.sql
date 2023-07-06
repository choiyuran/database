
create table member(
    memberid        varchar2(50),     
    name            varchar2(30),
    age             number,
    gender          varchar(10)
);

insert into member values('20201215-0001', '이지은', 30, '여성');
insert into member values('20201215-0002', '홍진호', 41, '남성');
insert into member values('20201216-0002', '이찬혁', 27, '남성');
insert into member values('20201216-0003', '윤후', 15, '남성');


select * from member where age >= 20 and gender='남성';


create table student2(
    username        varchar(20),
    age             number,
    gender          varchar(10),
    notebook        varchar(10)
);

insert into student2 values('김태연', 34, '여성', 'A');
insert into student2 values('이지은', 30, '여성', 'A');
insert into student2 values('김지수', 28, '여성', 'L');
insert into student2 values('우지호', 31, '남성', 'A');
insert into student2 values('김희철', 40, '남성', 'S');
insert into student2 values('임나연', 28, '여성', 'S');
insert into student2 values('주우재', 37, '남성', 'A');
insert into student2 values('김민정', 22, '여성', 'A');
insert into student2 values('신효섭', 31, '남성', 'L');
insert into student2 values('정기석', 39, '남성', 'S');


select * from student2;

select
    gender,
    count(gender) as count 
    from student2
    group by gender
    order by gender;
    
select 
    case
        when (age between 20 and 29)and gender ='여성' then '20대 여성'
        when (age between 30 and 39) and gender ='여성' then '30대 여성'
        when (age between 20 and 29) and gender ='남성' then '20대 남성'
        when (age between 30 and 39) and gender ='남성' then '30대 남성'
    end as 분류,
    case
        when notebook = 'A' then 'Apple'
        when notebook = 'S' then 'SAMSUNG'
        when notebook = 'L' then 'LG'
    end as 제조사
    from student2
    where age >= 20 and age <= 39
    order by 제조사;
    
    


