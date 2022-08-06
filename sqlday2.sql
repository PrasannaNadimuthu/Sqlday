use Learingsql

create table workers
(
wid int primary key,
wname varchar(20) NOT NULL,
wfield varchar(20) NOT NULL,
wsalary money
)
insert into workers values(1,'Sana','Software developer',300000)
insert into workers values(2,'preethi','EE developer',350000)
insert into workers values(3,'Naga','Student',100000)
insert into workers values(4,'Abi','IT developer',500000)
insert into workers values(5,'Malu','Student',200000)

select * from workers

create table students
(
sid int not null,
sname varchar(25) not null,
ssalary int not null
)

alter table students add constraint pk_idname PRIMARY KEY(sid,sname)

insert into students values(101,'Malu',200000)
insert into students values(102,'malu',300000)

select * from students

create table UCD
(
ucdname varchar(25) unique NOT NULL,
ucdid int Primary key,
ucddob datetime NOT NULL check(ucddob <= CURRENT_TIMESTAMP),
ucdage int NOT NULL CHECK(ucdage >= 18),
ucddesignation varchar(25) DEFAULT 'self-employeed'
)

insert into UCD values('John',1,'2000-01-07 12:12:12',25)
insert into UCD values('Jancy',2,'2022-01-07 12:12:12',23,'IT Employee')
insert into UCD values('Peter',3,'2001-01-07 12:12:12.567',22,'worker')
insert into UCD values('Paul',4,'2001-01-07 12:12:12.567',20)
delete from UCD where ucddesignation = 'IT Employee'
select * from UCD

create table parents
(
pid int primary key,
pname varchar(20) not null
)
insert into parents values(101,'Raj')
insert into parents values(102,'Dhas')
insert into parents values(103,'Veena')

create table child
(
cid int primary key,
cname varchar(20) not null,
pno int foreign key references parents(pid) on delete cascade on update cascade
)
insert into child values(1,'c1',101)
insert into child values(2,'c2',102)
insert into child values(3,'c3',101)

select * from child

select * from parents

update parents set pid=105 where pid=101

alter table child drop constraint FK__child__pno__6D0D32F4
