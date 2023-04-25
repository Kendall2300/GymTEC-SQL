use master
go

IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE NAME = 'GymTec')
CREATE DATABASE GymTec

GO 

USE GymTec

GO

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Employee')
create table Employee(
province nvarchar(15) not null,
district nvarchar(15),
canton nvarchar(15),
email nvarchar(20) not null,
password nvarchar(24) not null,
id char(9) not null,
Fname nvarchar(15) not null,
Sname nvarchar(15),
FLname nvarchar(15) not null,
SLname nvarchar(15) not null,
Workstaion_id char(2) not null,
form_id char(2) not null, 
branch_name nvarchar(15),
primary key(id)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Branch_Phone')
create table Branch_Phone(
branch_name nvarchar(15) not null,
phone char(8),
primary key(branch_name, phone)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Workstation')
create table Workstation(
id char(2) not null,
role nvarchar(25) not null,
description nvarchar(150),
primary key(id)
)


go


if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Form')
create table Form(
id char(2) not null,
typepayment nvarchar(20) not null,
description nvarchar(150),
primary key(id)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Branch')
create table Branch(
province nvarchar(15) not null,
district nvarchar(15) not null,
canton nvarchar(15) not null,
branch_name nvarchar(15) not null,
max_capacity int not null,
openDate nvarchar(120),
branch_schedule nvarchar(150), 
primary key(branch_name)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Service')
create table Service(
service_id char(2) not null,
service_description nvarchar(30) not null,
primary key(service_id)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Inventory')
create table Inventory(
brand nvarchar(20) not null,
serial_num int not null,
price int not null,
gear_id int not null,
branch_name nvarchar(15) not null,
primary key(serial_num, brand, branch_name)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Spa')
create table Spa(
branch_name nvarchar(15) not null,
status char not null,
primary key(branch_name)
)

go


if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Shop')
create table Shop(
branch_name nvarchar(15) not null,
status char not null,
primary key(branch_name)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Lesson')
create table Lesson(
lesson_id int not null,
quotas int not null,
search_begin nvarchar(120),
search_end nvarchar(120),
start_date nvarchar(120), 
end_date nvarchar(120), 
branch_name nvarchar(15) not null,
instructor_id char(9) not null,
service_id char(2) not null,
primary key(lesson_id)
)

go

--duda especifica de kendall
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Gear_avalible')
create table Gear_avalible(
gear_id int not null,
description nvarchar(120),
name nvarchar(15) not null,
primary key(gear_id)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Gear_type')
create table Gear_type(
gear_id int not null,
gear_type nvarchar(120),
primary key(gear_id)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Treatment')
create table Treatment(
treatment_id char(2) not null,
treatment_description nvarchar(120),
primary key(treatment_id)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Spa_Treatment')
create table Spa_Treatment(
branch_name nvarchar(15) not null,
treat_id char(2) not null,
id int,
primary key(branch_name, id)
)

go



if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Product')
create table Product(
barcode nvarchar(12) not null,
name nvarchar(12) not null,
description nvarchar(120),
price int not null,
branch_name nvarchar(15) not null,
primary key(barcode, branch_name)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Client_lesson')
create table Client_lesson(
client_id char(9) not null,
lesson_id int not null,
primary key(client_id, lesson_id)
)

go

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Client')
create table Client(
client_id char(9) not null,
address nvarchar(120),
weight int, 
IMC decimal(10,2),
Fname nvarchar(12) not null,
Sname nvarchar(12) ,
FLname nvarchar(15) not null,
SLname nvarchar(15) not null,
password nvarchar(24) not null,
bdate nvarchar(120),
primary key(client_id)
)

go