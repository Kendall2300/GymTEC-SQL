USE [GymTec2]
GO

INSERT INTO Workstation (id, role, description) 
VALUES 
(1, N'Administrador', N'Principal encargado del spa'),
(2, N'Instructor', N'Encargado de enseñarle a los clientes'),
(3, N'Dependiente Spa', N'Dependiente del spa'),
(4, N'Dependiente tienda', N'Dependiente de la tienda')

select * from dbo.Workstation

INSERT INTO Service(service_id, service_type, service_name) 
VALUES 
(1, N'Spa', N'Masaje relajante'),
(2, N'Spa', N'Masaje descarga muscular'),
(3, N'Spa', N'Sauna'),
(4, N'Spa', N'Baños a vapor')

select * from dbo.Service




