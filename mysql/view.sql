use study;
-- SHOW tables;
-- WITH CTE AS (
--     SELECT *,
--            ROW_NUMBER() OVER(PARTITION BY ename, department ORDER BY id) AS rn
--     FROM employee
-- )
-- DELETE FROM employee
-- WHERE id IN (
--     SELECT id FROM CTE WHERE rn > 1
-- );
select*FROM employee;
create view employee_detail as
select ename,salary from employee;
select*from employee_detail;
insert into employee(ename,salary,department)values("Anusa",69500,"IT");
update employee set department=69000 where id=13;

alter view employee_detail as
select id,ename,salary from employee;
update employee_detail set ename="vinusa" where id=14;

drop view employee_detail;
select department,count(*) from employee group by department;
select *from department_count;
CREATE VIEW department_count As select id,department,count(*)from employee Group by department;
drop view department_count;
update employee set department= "Tech" where id=12;

select DISTINCT ename,department from employee;