create table product(
    idx             number,
    name            varchar2(100),
    price           number,
    expiryDate      date,
    memo            varchar2(2000)
);

insert into product values(
    1,
    '��ī�ݶ�(ĵ) 190ml',
    900,
    '24/04/01',
    '��ī�ݶ� ĵ ����'
);

insert into product values(2, '��ī�ݶ�(PET) 500ml', 1500, '24/04/01', '��ī�ݶ� PET ����');
insert into product values(3, '��ī�ݶ�(PET) 1.5L', 2800, '24/04/01', '��ī�ݶ� PET ����');
insert into product values(4, '��������Ʈ(ĵ) 300ml', 1200, '24/05/01', '��������Ʈ ĵ ����');
insert into product values(5, '�䷹�ην�(3��)', 3000, '23/10/05', '�䷹�ην� ���� �Ա� ���� ǰ��');

select * from product;

-- ��ǰ��ȣ ������ �����ϱ�
select * from product order by idx;

-- ��ǰ �̸� ������ �����ϱ�
select * from product order by name;

-- ������� ������ �����ϱ�
select * from product order by expiryDate;

-- ��ǰ�� ������ 1000�� �̸��� ��ǰ�� ��ȸ�ϱ�
select * from product where price < 1000;

-- ��ǰ ��ȣ�� 3���� ��ǰ�� ��ȸ�ϱ�
select * from product where idx = 3;

-- ��ǰ�� �̸��� ��ī�ݶ� �����ϴ� ��쿡�� ��ȸ�ϱ�
select * from product where name like '%��ī�ݶ�%';

-- ��ǰ�� �̸��� ĵ�� �����ϴ� ��쿡�� ��ȸ�ϱ�
select * from product where name like '%ĵ%';

-- ��ǰ�� �̸��� ��ī�ݶ� �����ϸ鼭 ������ 1000�� �̻��� ��ǰ�� ��ȸ�ϱ�
select * from product 
    where name like '%��ī�ݶ�%' 
    and price >= 1000;
    
-- ��ǰ�� ��������� 2024�� 4�� 1�Ϻ��� 2024�� 4�� 30�� ������ ��ǰ�� ��ȸ�ϱ�
select * from product 
    where expiryDate between '24/04/01' and '24/04/30';
    
-- ��ǰ�� ��ȣ�� ¦���� ��츸 �ҷ�����/ mod(a, b) => a % b, �� �������� ���Ѵ�
select * from product 
    where mod(idx, 2) = 0;
    
-- ���� �����ϱ�, dual�� ���� ���̺�
select 10 + 20 from dual;

-- �÷� �̸��� ��Ī �ο��ϱ�(as�� ����ؼ� answer��� ��Ī �ο�)
select 12 * 23 as answer from dual;

commit;
    

