drop table product cascade constraints purge;
-- ������ ����
drop sequence product_seq;

-- ������ ����
create sequence product_seq             -- product ���̺��� ����� ������ ����
    start with 1                        -- 1���� �����ؼ�
    maxvalue 99999                      -- �ִ밪 99999����
    increment by 1                      -- 1�� �����Ѵ�
    nocache                             -- ���� �� ��� x
    nocycle;                            -- �ִ밪 ���޽� ó������ �ٽ� x

create table product (
    idx         number              default product_seq.nextval primary key,
    name        varchar2(100)       unique,
    price       number              check(price >= 100),
    expDate     date                check(expDate > to_date('2023/07/01', 'YYYY/MM/DD')),
    memo        varchar2(1000)      not null
);
    
insert into product(name, price, expDate, memo) values('��������', 3500, '23/12/31', '�������� 12p');
insert into product(name, price, expDate, memo) values('����', 4500, '23/12/31', '���� 12p');
insert into product(name, price, expDate, memo) values('�䷹�ην�', 1000, '23/12/31', '�䷹�ην� 3p');
insert into product(name, price, expDate, memo) values('������� 200ml', 1200, '23/06/30', '������� ��');       -- ����

update product set price = 1200 where idx = 4;

select * from product;
