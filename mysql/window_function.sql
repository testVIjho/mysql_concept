use study;
select *from employee;
-- select DISTINCT salary from (select salary,dense_rank() over (order by salary desc) as rnk from employee)t 
-- where rnk=2;
select salary from (select salary,dense_rank() over (order by salary desc) as rnk from employee)t 
where rnk=2;
use testing;
select*from student;
select sname,marks,rank() over(order by marks desc) as student_rank from student;

-- DENSE_RANK() → duplicates handle பண்ணும் (best choice)
-- ROW_NUMBER() → duplicates ignore பண்ணும்
-- LIMIT/OFFSET → simple but less flexible

select *from employee order by salary desc limit 2,3;
