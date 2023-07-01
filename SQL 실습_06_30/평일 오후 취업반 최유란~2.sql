select * from product;

select max(price) as maxValue from product;
select min(price) as minValue from product;

select sum(price) as total from product;
select avg(price) as average from product;

select count(*) as cnt from product;

insert into product(name, price, expDate, memo) 
    values('��ī�ݶ�', 1200, '24/06/01', '��ī�ݶ� ĵ');
insert into product(name, price, expDate, memo) 
    values('����ݶ�', 1100, '24/06/01', '����ݶ� ĵ');
insert into product(name, price, expDate, memo) 
    values('����', 900, '24/06/01', '���� ĵ');
    
select expDate, max(price) from product
    group by expDate;

-- �ߺ� ����
SELECT DISTINCT PRICE FROM PRODUCT;



