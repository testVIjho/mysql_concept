use study;
select*from employee;
select ename,salary,lag(salary) over (order by salary desc) As Previous_salary from employee;-- intha query previous rows oda salary return pannum

select *from(select ename,salary,department,dense_rank()over (partition by department order by salary Desc) As rnk From employee)t  where rnk <=3; -- this query return top 3 salries in each department

select *from(select ename,salary,department,rank()over (partition by department order by salary Desc) As rnk From employee)t  where rnk =2; 
-- intha query each department la 2 rank irukka rows return pannum ana Tech and IT department la 2 rank yarume illa so antha departmentku oru record koota varathu

select ename,salary, lag(salary) over(order by salary) As Previous_salary from employee; -- intha query previous row kana record return pannum
select ename,salary,lead(salary) over(order by ename) As Next_salary from employee; -- intha query next row kana record return pannum

select ename,salary,sum(salary)over(order by id)as Total_salary from employee;  -- its called running total
-- Running Total is the cumulative sum of a column calculated from the first row up to the current row. It's commonly implemented using SUM() OVER (ORDER BY ...)



