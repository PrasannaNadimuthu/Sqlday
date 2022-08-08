use Learingsql

select * from Workers
select avg(wsalary) as 'Average Salary' from workers
select min(wsalary) as 'Minimum Salary' from workers
select max(wsalary) as 'Maximum Salary' from workers
select count(wsalary) as 'Count Salary' from workers
select sum(wsalary) as 'Sum Salary' from workers

select avg(wsalary) as 'Average Salary',wfield from workers group by wfield

select avg(wsalary) as 'Average Salary',wfield from workers group by wfield having wfield='software developer'

select * from workers order by wsalary 

select * from workers order by wsalary desc

select * from workers order by wsalary desc,wid desc

select * from students

create synonym stds for students

select * from stds

drop synonym if exists stds

create table student
(
SID int primary key,
SName varchar(25) not null,
SDept int not null,
SClub int not null,
)
insert into student values(101,'Rana',1005,2001)
insert into student values(102,'Dhas', 1005,2001)
insert into student values(103,'Veena',1003,2003)
insert into student values(104,'Sana',1001,2002)
insert into student values(105,'Diya', 1001,2002)
insert into student values(106,'Dev',1002,2004)
insert into student values(107,'Rahul',1002,2003)
insert into student values(108,'Raisa', 1004,2001)
insert into student values(109,'Adhidhy',1004,2004)

select * from student

create table SDept
(
DID int primary key,
DeptName varchar(25) not null
)
insert into SDept values(1001, 'CSE')
insert into SDept values(1002, 'ECE')
insert into SDept values(1003, 'EEE')
insert into SDept values(1004, 'CIVIL')
insert into SDept values(1005, 'MECH')

select * from SDept

create table SClub
(
CID int primary key,
ClubName varchar(25) not null
)
insert into SClub values(2001, 'Sports')
insert into SClub values(2002, 'Dance')
insert into SClub values(2003, 'Music')
insert into SClub values(2004, 'Acting')

select * from SClub

select SID,SName,SDept,DeptName from student inner join SDept on SDept=DID


select student.SID,student.SName,student.SDept,SDept.DeptName from student inner join SDept on student.SDept=SDept.DID

select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from student as s inner join SDept as d on s.SDept=d.DID

select s.SID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from student as s inner join SDept as d on s.SDept=d.DID inner join SClub as c on s.SClub=c.CID

select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from student as s inner join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from student as s left join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from student as s right join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from student as s full join SDept as d on s.SDept=d.DID

create table sanaa
(
sid int primary key IDENTITY(1,1),
sname varchar(20)
)
insert into sanaa values('Ram')
select * from sanaa 

create sequence empid as INT start with 1 increment by 5

create table seq
(
id int primary key ,
name varchar(20)
)

insert into seq values(NEXT VALUE FOR EMPID,'Peter')
insert into seq values(NEXT VALUE FOR EMPID,'Paul')
insert into seq values(NEXT VALUE FOR EMPID,'John')

select * from seq

select NEXT VALUE FOR EMPID

select * from student

create view Sports
as 
select * from student where SClub=200

select * from Sports

create view student_Dept
as
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from student as s inner join SDept as d on s.SDept=d.DID

select * from student_Dept