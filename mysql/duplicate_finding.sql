-- Duplicate finding query
select*from student;
desc student;
INSERT INTO student(sname,marks)values("Aadhini",496);

select sname ,count(*) from student group by sname having count(*)>1;-- it return single row duplicate query
select sname ,marks,count(*) from student group by sname,marks having count(*)>1; -- it return 2 rows duplicate query
use study;

-- top  3 salaries vangura employee list

select * from (select*,dense_rank() over (order by salary desc)as rnk from employee) k where rnk<=3;

SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
  FROM employee
) t
WHERE rn <= 3;