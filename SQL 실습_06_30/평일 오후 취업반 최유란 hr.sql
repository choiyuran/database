select * from employees;

select department_id, max(salary) from employees
    group by department_id
    order by max(salary) desc;
    
select * from employees;        -- 107
select * from departments;      -- 27
    
select 
    E.first_name,
    E.salary,
    D.department_name
        from employees E
        join departments D
 --       on 1 = 1;               -- 2889
         on E.department_id = D.department_id
         order by D.department_name;
         
-- �μ��� �޿� ���(�Ҽ��� ������)
select 
    ceil(avg(E.salary)) as salary,
    D.department_name
        from employees E
        join departments D
         on E.department_id = D.department_id
         group by D.department_name
         order by salary desc;

-- �μ��� �ּ� �޿�
select 
     D.department_name,
     min(E.salary) as salary
        from employees E
        join departments D
         on E.department_id = D.department_id
         group by D.department_name
         order by salary desc;
  
-- �μ��� ������ ��       
 select 
     D.department_name,
     sum(E.salary) as salary
        from employees E
        join departments D
         on E.department_id = D.department_id
         group by D.department_name
         order by salary desc;  

select 
    D.department_id as �μ���ȣ,
    D.department_name as �μ���,
    count(E.salary) as �ο���,
    sum(E.salary) as ���޿�
        from employees E
        join departments D
            on E.department_id = D.department_id
        group by D.department_name, D.department_id
        order by ���޿� desc;

         

