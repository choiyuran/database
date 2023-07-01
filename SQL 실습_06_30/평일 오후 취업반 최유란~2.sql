select * from product;

select max(price) as maxValue from product;
select min(price) as minValue from product;

select sum(price) as total from product;
select avg(price) as average from product;

select count(*) as cnt from product;

insert into product(name, price, expDate, memo) 
    values('ÄÚÄ«ÄÝ¶ó', 1200, '24/06/01', 'ÄÚÄ«ÄÝ¶ó Äµ');
insert into product(name, price, expDate, memo) 
    values('Æé½ÃÄÝ¶ó', 1100, '24/06/01', 'Æé½ÃÄÝ¶ó Äµ');
insert into product(name, price, expDate, memo) 
    values('¸ÆÄÝ', 900, '24/06/01', '¸ÆÄÝ Äµ');
    
select expDate, max(price) from product
    group by expDate;

-- Áßº¹ Á¦°Å
SELECT DISTINCT PRICE FROM PRODUCT;



