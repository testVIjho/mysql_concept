-- indexing concept
use study;
select*from employee;
alter table employee Add city varchar(50) default "chennai";
update employee set city = "Thiruvannamalai" where id=9;
update employee set city = "Salem" where id=10;
update employee set ename = "Hema" where id=12;
insert into employee(ename,salary,department)values("Hema",56630,"Tech"); -- this query return an Error because we use unique index
-- Error Code: 1062. Duplicate entry 'Hema' for key 'unique_index'

create index composite_index ON employee(ename,department,city);
show indexes from employee;
select*from employee;
select*from employee where ename='Aadhi' AND department='GD' AND city='Sivaganga';
explain select*from employee where ename='Aadhi' AND department='GD' AND city='Sivaganga'; -- this query use index because we create composite index
select*from employee where ename='Aadhi'  AND city='Sivaganga';
explain select*from employee where ename='Aadhi' AND city='Sivaganga'; -- this query use index because we create composite index
select*from employee where department='GD' AND city='Sivaganga';
explain select*from employee where department='GD' AND city='Sivaganga'; -- this query does not use index because in composite order matter this query does not follow the column order

 select*from employee where city='chennai'; -- intha query index use pannala yena
explain  select*from employee where city='chennai';
-- already duplicate entry irukka column ku uniue index eluthuna it will throw an error
-- Error Code: 1062. Duplicate entry 'Praveen' for key 'unique_index'
select upper(ename)from employee;-- ippo namma oru index irukka column mela function use panna antha query indexing pannathu
explain select upper(ename)from employee; 
explain select *from employee where lower(ename)='vinusa';

CREATE unique INDEX unique_index ON employee(ename);

-- Types of Indexes
-- 1. Primary Index
-- 2. Unique Index
-- 3. Normal Index
-- 4. Composite Index (Very Important)
SHOW TABLE STATUS;

