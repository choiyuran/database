
create table member(
    memberid        varchar2(50),     
    name            varchar2(30),
    age             number,
    gender          varchar(10)
);

insert into member values('20201215-0001', '������', 30, '����');
insert into member values('20201215-0002', 'ȫ��ȣ', 41, '����');
insert into member values('20201216-0002', '������', 27, '����');
insert into member values('20201216-0003', '����', 15, '����');


select * from member where age >= 20 and gender='����';


create table student2(
    username        varchar(20),
    age             number,
    gender          varchar(10),
    notebook        varchar(10)
);

insert into student2 values('���¿�', 34, '����', 'A');
insert into student2 values('������', 30, '����', 'A');
insert into student2 values('������', 28, '����', 'L');
insert into student2 values('����ȣ', 31, '����', 'A');
insert into student2 values('����ö', 40, '����', 'S');
insert into student2 values('�ӳ���', 28, '����', 'S');
insert into student2 values('�ֿ���', 37, '����', 'A');
insert into student2 values('�����', 22, '����', 'A');
insert into student2 values('��ȿ��', 31, '����', 'L');
insert into student2 values('���⼮', 39, '����', 'S');


select * from student2;

select
    gender,
    count(gender) as count 
    from student2
    group by gender
    order by gender;
    
select 
    case
        when (age between 20 and 29)and gender ='����' then '20�� ����'
        when (age between 30 and 39) and gender ='����' then '30�� ����'
        when (age between 20 and 29) and gender ='����' then '20�� ����'
        when (age between 30 and 39) and gender ='����' then '30�� ����'
    end as �з�,
    case
        when notebook = 'A' then 'Apple'
        when notebook = 'S' then 'SAMSUNG'
        when notebook = 'L' then 'LG'
    end as ������
    from student2
    where age >= 20 and age <= 39
    order by ������;
    
    


