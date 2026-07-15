-- FULL TEXT INDEX
use study;

select*from books;
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author VARCHAR(100),
    description TEXT
);

INSERT INTO books(title,author,description)VALUES("Learn MySQL","John","Complete MySQL database tutorial for beginners");
INSERT INTO books(title,author,description)VALUES("Java Basics","David","Java programming language for beginners");
INSERT INTO books(title,author,description)VALUES("Spring Boot Guide","Alex","Spring Boot with MySQL and REST API");
INSERT INTO books(title,author,description)VALUES("PHP Dev","Warren","Mysql REST API Testing");

explain SELECT*FROM books where description like'%REST API%';
show indexes from books;
UPDATE books set description='REST API REST API Tutor' where id=6;
DESC books;
alter table books Add FULLTEXT(description);
SELECT*FROM books;
Explain SELECT*FROM books where Match(description) AGAINST('REST API');
SELECT*FROM books where Match(description) AGAINST('REST API');
SELECT*FROM books where match(description) AGAINST('+REST API ' IN BOOLEAN MODE);
SELECT*FROM books where match(description) AGAINST('REST AP*' IN BOOLEAN MODE);
SELECT*FROM books where match(description) AGAINST('>REST API' IN BOOLEAN MODE);



