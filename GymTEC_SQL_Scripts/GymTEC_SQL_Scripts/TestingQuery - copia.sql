USE [GymTec]
GO


INSERT INTO Branch(province, district, canton, branch_name, max_capacity, openDate, branch_schedule) 
VALUES 
(N'SAN JOSE', N'DESAMPA', N'CENTRAL',N'BCHEPE', 190, '1974-04-21', N'L-V'),
(N'ALAJUELA', N'SAN RAMON', N'CENTRAL',N'BALAJUELA', 50, '1990-05-22', N'K-V'),
(N'CARTAGO', N'UNION', N'CENTRAL',N'BCARTAGO', 174, '1988-06-23', N'L-M')
select * from dbo.Branch

INSERT INTO Form(id, typepayment, description) 
VALUES 
(1, N'POBRE', N'FGHFGHGXHGX'),
(2, N'MEDIO', N'FGHFGHGXHGX'),
(3, N'ALTO', N'FGHFGHGXHGX')

select * from dbo.Form


INSERT INTO Employee (province, district, canton, email, password, id, Fname, Sname, FLname, SLname, Workstaion_id, form_id, branch_name) 
VALUES 
(N'SAN JOSE', N'DESAMPA', N'CENTRAL', N'SDFSDFSD@DFGDF.COM', N'GDFGDFGDFG', 133456789, N'JORGE', N'DANIEL', N'SOTO', N'RAMIREZ', 1, 3, N'BCHEPE'),
(N'SAN JOSE', N'MORAVIA', N'AQUI', N'SDFSDFSD@DFGDF.COM', N'GDFGDFGDFG', 233456789, N'MARIO', N'DANIEL', N'MONTOYA', N'MIRANDA',  1, 3, N'BALAJUELA'),
(N'HEREDIA', N'BARREAL', N'PORAHI', N'SDFSDFSD@DFGDF.COM', N'GDFGDFGDFG', 333456789, N'RODOLFO', N'ELRENO', N'SOPO', N'TAMAIRE', 1, 3, N'BCARTAGO')

select * from dbo.Employee

INSERT INTO Branch_Phone(branch_name, phone) 
VALUES 
(N'BCHEPE', 85858585),
(N'BALAJUELA', 74747474),
(N'BCARTAGO', 52525252)

select * from Branch_Phone

INSERT INTO Spa(branch_name, status) 
VALUES 
(N'BCHEPE', 1),
(N'BALAJUELA', 1),
(N'BCARTAGO', 1)

select * from Spa

INSERT INTO Shop(branch_name, status) 
VALUES 
(N'BCHEPE', 0),
(N'BALAJUELA', 0),
(N'BCARTAGO', 0)

select * from Shop

INSERT INTO Spa_Treatment(branch_name, treat_id, id) 
VALUES 
(N'BCHEPE', 2, 1),
(N'BALAJUELA', 3, 2),
(N'BCARTAGO', 1, 3)

select * from dbo.Spa_Treatment

INSERT INTO Product(barcode, name, description, price, branch_name) 
VALUES 
(N'456DSADS6S', N'PASTA', N'NOSE', 1000, N'BCHEPE'),
(N'D65F4S6DF4', N'PAPAS', N'NOSE', 2500, N'BALAJUELA'),
(N'TRTERE2313', N'ATUN', N'NOSE', 1200, N'BCARTAGO')

select * from dbo.Product

INSERT INTO Gear_type(gear_id,gear_type) 
VALUES 
(1, N'Lifting'),
(2, N'Running'),
(3, N'Jumping')

select * from dbo.Gear_type

INSERT INTO Gear_avalible(gear_id,description,name) 
VALUES 
(1, N'Usado par levantar peso', N'Mancuernas'),
(2, N'Usado para correr estáticamente',N'Caminadora'),
(3, N'Usado para saltar, entrena piernas', N'Cuerda')

select * from dbo.Gear_avalible

INSERT INTO Inventory(brand,serial_num,price,gear_id, branch_name) 
VALUES 
(N'Suny',123456789,10000,1,N'BCHEPE'),
(N'Panasuny',987654321,1000000,2,N'BALAJUELA'),
(N'Suny',741852963,100,1,N'BCARTAGO')

select * from dbo.Inventory

INSERT INTO Lesson(lesson_id,quotas,search_begin,search_end, start_date,end_date,branch_name,instructor_id,service_id) 
VALUES 
(1,10,'1974-04-21','1974-04-22','1974-05-01','1974-05-01',N'BCHEPE',133456789,1),
(2,10,'1974-04-21','1974-04-22','1974-05-01','1974-05-01',N'BALAJUELA',233456789,2),
(3,10,'1974-04-21','1974-04-22','1974-05-01','1974-05-01',N'BCARTAGO',333456789,3)

select * from dbo.Lesson

INSERT INTO Client(client_id,address,weight,IMC,Fname,Sname,FLname,SLname,password,bdate) 
VALUES 
(369852147,N'200 m norte del volcan turrialba crater 2',70,25.5,N'Adolfo',N'Gerardo',N'Martinez',N'Guillen',N'Enero2021','1954-04-21'),
(789456123,N'200 m norte de la casa de tu tia',72,24.2,N'Gonzalo',N'Adonis',N'Acuna',N'Madrigal',N'Enero2022','1955-05-29'),
(456789123,N'200 m norte de la casa de tu abuela',80,30,N'Adriel',N'Alejandro',N'Guerrero',N'Rojas',N'Enero2023','1956-07-12')

select * from dbo.Client

INSERT INTO Client_lesson(client_id,lesson_id) 
VALUES 
(369852147,1),
(789456123,2),
(456789123,3)

select * from dbo.Client_lesson

