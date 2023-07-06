select
    first_name, salary, hire_date
   -- extract(year from hire_date)
        from employees
    where extract(year from hire_date) > 2005
    and salary >= 5000
    order by salary desc, first_name asc
    ;
  
      
select
    avg(salary)
    from employees;
    
select
    floor(avg(salary))
    from employees;
    
select
    ceil(avg(salary))
    from employees;
    
select
    city,
    count(department_name) as cnt
        from departments
        join locations
        on departments.location_id = locations.location_id
        group by city
        order by cnt desc;
        
select 
    department_name,
    city,
    case 
        when country_id = 'US' then '미국'
        when country_id = 'UK' then '영국'
        when country_id = 'CA' then '캐나다'
        when country_id = 'DE' then '독일'
    end as 국가
    from departments
    join locations
        on departments.location_id = locations.location_id;
