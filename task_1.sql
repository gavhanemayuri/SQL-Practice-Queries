create database temp;

use temp;

create table stu (ID int primary key, name varchar (50),age int not null,Mark varchar (40),city varchar(70));

insert into stu value (1,"Mayuri",21,96,"Pune"),(2,"Sakshi",20,88,"Mumbai"),(3,"Mayur",21,87,"Nashik"),(4,"Madhu",19,89,"Dhule"),(5,"Mahi",20,80,"Patharud");

select count(age) from stu;

select count(*)from stu;

SELECT COUNT(DISTINCT ID)FROM stu;

select * from stu limit 3;

select name AS 'Name' from stu;

select * from stu where ID in (1,2,3);

select name from stu where name is null;

select mark from stu where mark is not null;

select * from stu order by Name asc;

select * from stu order by ID desc;

select * from stu order by name desc;

select * from stu order by rand() limit 3;

CREATE UNIQUE INDEX unique_name ON stu(name);

CREATE TABLE stroy_book(title varchar(40),content text,FULLTEXT(title,content));

INSERT INTO stroy_book VALUES (ST_GeomFromText('POINT(1 1)')),(ST_GeomFromText('LINESTRING(2 1,6 6)'));

INSERT INTO geometry
VALUES
(ST_GeomFromText('POINT(1 1)')),
(ST_GeomFromText('POINT(2 3)')),
(ST_GeomFromText('POINT(4 5)')),
(ST_GeomFromText('LINESTRING(2 1,6 6)')),
(ST_GeomFromText('LINESTRING(0 0,3 4,5 8)'));
