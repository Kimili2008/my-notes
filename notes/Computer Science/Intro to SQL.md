a standard language for accessing and mainpulating databases.
SQL stands for structured Query Language
SQL lets you access and manipulate databases.
SQL became a standard in 1986, and ISO in 1987.
## some important traits
- not case sensitive(uppercase keywords and lowercase keywords are all allowed)

## some of the most important SQL Commands
- select - extracts data from a database
- update- updates data in a database
- deletes- deletes data from a database
- insert into - inserts [data] into a [database]
- create database - [create] a [database]
- create index - creates an index (search key)
- Drop Index - deletes an index

## example
```sql
Create table Students(
	Name varchar(255),
	student_number int,
	desciption varchar(255),
);
alter table Students
drop column Students;
add parents varchar(255);
rename column student_number to student_email;
select parents, student_email from Students;
select * from students; 
-- above are the basic operations of sql
-- selections 
Select parents, student_email
from Students
where desciption = "perfect";

```