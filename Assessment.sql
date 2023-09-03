create database if not exists assessment;
use assessment;
create table worker (
	worker_id int auto_increment primary key,
    first_name varchar(15),
    last_name varchar(15),
    salary int,
    joining_date datetime,
    department varchar(10)
);

desc worker;
insert into worker (first_name,last_name,salary,joining_date,department) 
	values ('Monika','Arora',100000,'2014-02-20 9:00:00','HR'),
		   ('Niharika','Verma',80000,'2014-06-11 9:00:00','Admin'),
		   ('Vishal','Singhal',300000,'2014-02-20 9:00:00','HR'),
           ('Amitabh','Singh',500000,'2014-02-20 9:00:00','Admin'),
           ('Vivek','Bhati',500000,'2014-06-11 9:00:00','Admin'),
           ('Vipul','Diwan',200000,'2014-06-11 9:00:00','Account'),
           ('Satish','Kumar',75000,'2014-01-20 9:00:00','Account'),
           ('Geeta','Chauhan',90000,'2014-04-11 9:00:00','Admin');
           
#1
select * from worker order by first_name asc , department desc;

#2
select * from worker where first_name in ('vipul', 'satish');

#3
select * from worker where first_name like ('%h') and length(first_name) =6;
 
#4

#5
select distinct department from worker;

#6
select * from worker limit 6;

#7
select department from worker group by department having count(first_name)<5;

#8
select department, count(first_name) as number_of_employees from worker group by department;

#9
select concat(first_name, ' ', last_name) as name , max(salary), department from worker group by department;

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
create table school (
	StdID int primary key ,
    StdName varchar(50),
    Sex varchar(10),
    Percentage int,
    Class char(2),
    Sec char(1),
    Stream varchar(15),
    DoB date
    );
desc school;
insert into school (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DoB) values 
	(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-03-08'),
    (1002, 'Maahi Agarwal', 'Female', 56, 11, 'C', 'Commerce', '2008-11-23'),
    (1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'),
    (1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997-05-11'),
    (1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003-09-14'),
    (1006, 'Jahanvi Puri', 'Female', 60, 11, 'B', 'Commerce', '2008-07-11'),
    (1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1997-08-03'),
    (1008, 'Sahil Saras', 'Male', 56, 11, 'C', 'Commerce', '2008-07-11'),
    (1009, 'Akshra Agarwal', 'Female', 72, 12, 'B', 'Commerce', '1996-01-10'),
    (1010, 'Stuti Mishra', 'Female', 39, 11, 'F', 'Science', '2008-11-23'),
    (1011, 'Harsh Agarwal', 'Male', 42, 11, 'C', 'Science', '1998-08-03'),
    (1012, 'Nikunj Agarwal', 'Male', 49, 12, 'C', 'Commerce', '1998-06-26'),
    (1013, 'Akriti Saxena', 'Female', 89, 12, 'A', 'Science', '2008-11-23'),
    (1014, 'Tani Rastogi', 'Female', 82, 12, 'A', 'Science', '2008-11-23');

#1
select * from school;
    
#2
SELECT StdName, DOB
FROM school ;    

#3
SELECT * FROM school WHERE percentage >= 80;

#4
SELECT StdName, Stream, Percentage from school WHERE percentage > 80;

#5
SELECT * from school WHERE stream = 'science' AND percentage > 75;