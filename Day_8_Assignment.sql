show databases;
use aj;
show tables;
create table Students(
student_id int,
name varchar(20),
subject varchar(20),
marks int
);
insert into Students values(1,'Sam','English',89),
(2,'Sandy','Tamil',78),(3,'Tharun','English',68),
(3,'Donglee','Science',72),(4,'Jackie','Science',91),
(5,'Charlie','Science',58);
update  students set marks =91 where name ="Donglee";
select* from students;
select name,subject,marks, sum(marks) over(Partition by subject order by marks) as Sum from students;
select name,subject,marks, rank() over( partition by subject order by marks) as Ranking from students;
select subject name,subject,marks, lead(marks,1,0) over(Partition by subject) as lead_value from students; 