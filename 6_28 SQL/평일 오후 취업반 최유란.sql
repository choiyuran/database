create table phonebook(
-- varchar��������..?? 
-- char�� ��������
    name VARCHAR2(100),
    age number,
    pnum VARCHAR2(20)
);
-- ������� ���̺� ��� Ȯ��
select * from tab;
--���̺� ���� Ȯ��
desc phonebook;

insert into phonebook values ('������', 31, '010-1111-1111');
insert into phonebook values ('ȫ��ȣ', 42, '010-2222-2222');
insert into phonebook values ('ȫ�浿', 29, '010-1234-5678');
insert into phonebook values ('���ܺ�', 5, '010-3333-3333');

select * from phonebook;
select * from phonebook;

-- ���Ͽ� �ִ� �̸��� �ҷ���
select name from phonebook;
-- ���Ͽ� �ִ� age coiumn�� �ҷ���
SELECT age from phonebook;

--���δ�  row,record��� �θ���.
-- ù�ٿ��� ��� ������ �����ش�. => column�̶�� �θ���.
-- ��� ���̺�� �����Ǿ��ִ�.
select name, age from phonebook;
--�÷����� ������ �ɾ� �ҷ��� �� �ִ�.
select * from phonebook where name = '������';
select * from phonebook where age > 10;
select * from phonebook where age between 20 and 40;
select * from phonebook where name like 'ȫ%';
COMMIT;