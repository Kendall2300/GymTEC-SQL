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

INSERT INTO Employee (province, district, canton, email, password, id, Fname, Sname, FLname, SLname, Workstaion_id, form_id, branch_name) 
VALUES 
(N'SAN JOSE', N'DESAMPA', N'CENTRAL', N'SDFSDFSD@DFGDF.COM', N'GDFGDFGDFG', 123456789, N'JORGE', N'DANIEL', N'SOTO', N'RAMIREZ', 1, 3, N'BCHEPE'),
(N'SAN JOSE', N'MORAVIA', N'AQUI', N'SDFSDFSD@DFGDF.COM', N'GDFGDFGDFG', 223456789, N'MARIO', N'DANIEL', N'MONTOYA', N'MIRANDA',  1, 3, N'BALAJUELA'),
(N'HEREDIA', N'BARREAL', N'PORAHI', N'SDFSDFSD@DFGDF.COM', N'GDFGDFGDFG', 323456789, N'RODOLFO', N'ELRENO', N'SOPO', N'TAMAIRE', 1, 3, N'BCARTAGO')

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





