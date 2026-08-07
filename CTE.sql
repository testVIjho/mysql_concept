use study;
select *from employee;

select *from (select department,avg(salary) As avg_salary from employee group by department) AS dept_avg where avg_salary>66000;

with average_salary as (select department,avg(salary) as avg_salary from employee group by department)
select *from average_salary where avg_salary>66000;
 
WITH fresh_employee AS (select ename,salary,city from employee where department IN ('IT','AI'))
select *from fresh_employee where salary >65000 ;

with department_salary as (select department,avg(salary) as avg_salary from employee group by department)
select * from department_salary where avg_salary>65600;

-- CTE WITH JOINS

with product_average as (
select 
product_id,avg(price) as avg_price from buyer group by product_id)
select 
p.productname,
pa.avg_price
from product_average pa
join product p on(p.id = pa.product_id);

-- salary_data 
-- employee_count;

use study;
select*from employee;

-- CTE WITH JOINS
with employee_count AS 
(select department,count(*)AS Total_employee from employee group by department),
salary_data AS 
(select department,avg(salary) AS average_salary from employee group by department)
select ec.department,
ec.Total_employee ,
sd.average_salary
from employee_count ec
JOIN salary_data sd ON (ec.department = sd.department);


with employee_count AS 
(select department,count(*)AS Total_employee,avg(salary) AS average_salary from employee group by department)
select ec.department,
ec.Total_employee ,
ec.average_salary
from employee_count ec;

-- Second CTE, first CTE-ai use pannalam:
With department_salary As 
(select department,avg(salary) as avg_salary from employee group by department), 
High_salary As (select * from department_salary where avg_salary>67000)
select*from High_salary;

-- CTE + Window Functions
select*from employee;
select ename, salary,department,rank()over(partition by department order by salary);
use study;

-- Recursive CTE
with  RECURSIVE EmployeeTree AS (
select 
id, ename,manager_id 
from employee 
where manager_id IS NULL
UNION ALL 
select 
e.id,e.ename,e.manager_id
from employee e
join EmployeeTree m ON e.manager_id = m.id)
select*from EmployeeTree;
select*from employee;









