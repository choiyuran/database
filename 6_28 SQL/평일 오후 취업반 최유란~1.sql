-- ���̺� ���� �� �����뿡 �ȵ��� �ٷ� ����
drop table student purge;
-- f5 ��ü ����

create table student (
    name        varchar2(50),
    score       number
);

select * from tab;
desc student;
select * from student;

insert into student values('������', 95);
insert into student (name) values('ȫ��ȣ');
insert into student values('������', 96);

update student set score = 22 where name = 'ȫ��ȣ';

select * from student where score >= 90;
select * from student order by score asc;
select * from student order by score desc;
select * from student order by name;
select * from student order by name desc;
commit;