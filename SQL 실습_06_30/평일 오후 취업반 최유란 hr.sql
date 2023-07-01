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
         
-- 부서별 급여 평균(소수점 버리고)
select 
    ceil(avg(E.salary)) as salary,
    D.department_name
        from employees E
        join departments D
         on E.department_id = D.department_id
         group by D.department_name
         order by salary desc;

-- 부서별 최소 급여
select 
     D.department_name,
     min(E.salary) as salary
        from employees E
        join departments D
         on E.department_id = D.department_id
         group by D.department_name
         order by salary desc;
  
-- 부서별 나가는 돈       
 select 
     D.department_name,
     sum(E.salary) as salary
        from employees E
        join departments D
         on E.department_id = D.department_id
         group by D.department_name
         order by salary desc;  

select 
    D.department_id as 부서번호,
    D.department_name as 부서명,
    count(E.salary) as 인원수,
    sum(E.salary) as 월급여
        from employees E
        join departments D
            on E.department_id = D.department_id
        group by D.department_name, D.department_id
        order by 월급여 desc;

         

