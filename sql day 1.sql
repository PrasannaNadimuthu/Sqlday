create database Learingsql
create table Sana
(
sname varchar(20),
scontactno varchar(10),
sage int
)
select * from Sana
insert into Sana values('Prasanna','7339038326',21)
insert into Sana values('Nadimuthu','9688576885',50)
insert into Sana values('Seethalakshmi','8012332324',47)
insert into Sana values('Bala','8012332324',27)
insert into Sana values('Devi','8012332324',16)

alter table Sana add num int
select * from Sana
update Sana set num='101' where sname='Prasanna'
update Sana set num='101' where sname='Nadimuthu'

update Sana set num='102' where sname='Nadimuthu' 
update Sana set num='103' where sname='Seethalakshmi' 
update Sana set num='104' where sname='Bala' 
update Sana set num='105' where sname='Devi' 
delete from Sana where sname='Prasanna'

 alter table Sana drop row num='102'

 truncate table Sana

 alter table Sana drop column num

 drop table Sana

create schema Prasaa

create table demo
(
id int
)
create table Prasaa.demo
(
id int
)

select * from Pras.demo

drop schema if exists Pras
drop table Pras.demo
drop schema if exists Pras

select sname,sage from Sana
select sname as saname, sage as saage from Sana
select * from Sana where sname='Devi'

select * from Sana where sname='Seethalakshmi' Collate SQL_Latin1_General_CP1_CS_AS;

select * from Sana where sage>20
select * from Sana where sage<=30

alter table Sana add sdegree varchar(10)

update Sana set sdegree='BE' where sname='Prasanna'
update Sana set sdegree='ITI' where sname='Nadimuthu'
update Sana set sdegree='HM' where sname='Seethalakshmi'
update Sana set sdegree='H' where sname='Bala'
update Sana set sdegree='11' where sname='Devi'
 select * from Sana

update Sana set sdegree='HM' where sdegree='H'
update Sana set sdegree='11' where sdegree='ITI'

select * from Sana where sage>20 AND sdegree='HM'
select * from Sana where sage<10 OR sdegree='11'
select * from Sana where sage>20 NOT sdegree='HM'

select * from Sana where num in (101,103,104)
select * from Sana where num not in (101,103,104)

select * from Sana where sname like '_e%'
select * from Sana where sname like '[a-e]%'

Select sdegree from Sana
Select DISTINCT sdegree from Sana