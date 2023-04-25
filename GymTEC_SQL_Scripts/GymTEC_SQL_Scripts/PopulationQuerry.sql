USE [GymTec]
GO

INSERT INTO Workstation (id, role, description) 
VALUES 
(1, N'Administrador', N'Principal encargado del spa'),
(2, N'Instructor', N'Encargado de enseñarle a los clientes'),
(3, N'Dependiente Spa', N'Dependiente del spa'),
(4, N'Dependiente tienda', N'Dependiente de la tienda')

select * from dbo.Workstation

INSERT INTO Service(service_id, service_description) 
VALUES 
(1, N'Cyclismo'),
(2, N'Pilates'),
(3, N'Yoga'),
(4, N'Zumba'),
(5, N'Natacion')

select * from dbo.Service

INSERT INTO Treatment(treatment_id, treatment_description) 
VALUES 
(1, N'Masaje relajante'),
(2, N'Masaje descarga muscular'),
(3, N'Sauna'),
(4, N'Baños a vapor')


select * from dbo.Treatment
