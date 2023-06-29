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

insert into childBook values('�ǲǲ� ķ��','������','å�д°�','2023-06-27', 14000);
insert into childBook values('�ȳ� ����','������','�̵��â��','2022-12-05', 15000);
insert into childBook values('���Ͽ��� ������','�迵��','å�д°�','2023-05-22', 14000);
insert into childBook values('������ ����','���μ�','â��','2023-04-21', 15000);
insert into childBook values('�˻���','����','å�д°�','2017-03-25', 12000);
commit;
select * from childBook;

-- ������ ���� å ������ 13500���� ����
update childBook set price=13500 where title='������ ����';

-- å ������ 15000�� �̻��� å
select * from childBook where price >= 15000;
-- å ���ݼ����� ��������
select * from childBook order by price desc;
-- å ��������� ��������
select * from childBook order by title;
-- �������� �������� �ֽż�
select * from childBook order by publish_date desc;
-- ���ǻ簡 å�д°��� ��ȸ
select * from childBook where publisher='å�д°�';
