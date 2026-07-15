-- limit offset
use study;
select*from employee;
select *from employee limit 7,7; -- first 7 record skip pannitu next irukka 7 record return pannum
select *from employee order by salary limit 7,7;