-- Group-wise highest salary edukkura query?
-- intha query department wise highest salary irukka employee return pannum
select e.ename ,e.department, e.salary 
from employee e
join (select department,max(salary) As High_Salary from employee group by department)d
  On (e.department = d.department AND e.salary= d.High_Salary);

-- we can acheiving in 2 ways using
-- 1.IS NULL
-- 2.NOT EXISTS

select p.productname,p.id from product p 
left join buyer b on (b.product_id = p.id) where b.product_id IS NULL;

select *from product p 
where NOT EXISTS(select 1 from buyer b where b.product_id = p.id);
  
-- self join
select e.ename,e.salary,e.department,d.ename As Manager_Name,d.salary from employee e
join employee d on (e.manager_id = d.id);

  
  