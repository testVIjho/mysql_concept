use study;
show table status;

SELECT TABLE_NAME, Create_time FROM 
information_schema.tables where table_schema = "study" 
AND Create_time >="2026-01-01" order by Create_time;

select*from information_schema.SCHEMATA;

select*from employee;
desc employee;




SELECT
    TABLE_NAME,
    CREATE_TIME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
  AND CREATE_TIME >= '2025-07-01 00:00:00'
ORDER BY CREATE_TIME;