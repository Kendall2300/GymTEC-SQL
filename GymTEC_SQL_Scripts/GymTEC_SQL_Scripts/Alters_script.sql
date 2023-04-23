use master
go

USE GymTec

GO

alter table Employee
add constraint Workstation_ID_FK foreign key (Workstaion_id)
REFERENCES Workstation(id);

alter table Employee
add constraint Form_ID_FK foreign key (form_id)
REFERENCES Form(id);

alter table Branch
add constraint Branch_MGR_ID_FK foreign key (id_emp_admin)
REFERENCES Employee(id);

alter table Inventory
add constraint Inventory_Gear_ID_FK foreign key (gear_id)
REFERENCES Gear_avalible(gear_id);

alter table Spa
add constraint Spa_Branch_Name_FK foreign key (branch_name)
REFERENCES Branch(branch_name);

alter table Shop
add constraint Shop_Branch_Name_FK foreign key (branch_name)
REFERENCES Branch(branch_name);

alter table Lesson
add constraint Lesson_Instructor_FK foreign key (instructor_id)
REFERENCES Employee(id);

alter table Lesson
add constraint Lesson_Service_FK foreign key (service_id)
REFERENCES Service(service_id);

alter table Gear_avalible
add constraint Gear_avalible__FK foreign key (gear_id)
REFERENCES Gear_type(gear_id);

alter table Client_lesson
add constraint Client_Lesson_client_id_FK foreign key (client_id)
REFERENCES Client(client_id);

alter table Client_lesson
add constraint Client_Lesson_lesson_id_FK foreign key (lesson_id)
REFERENCES Lesson(lesson_id);

alter table Branch_Phone
add constraint Branch_Phone_Branch_Name_FK foreign key (branch_name)
REFERENCES Branch(branch_name);

alter table Treatment
add constraint Treatment_Branch_Name_FK foreign key (branch_name)
REFERENCES Spa(branch_name);

alter table Product
add constraint Product_Branch_Name_FK foreign key (branch_name)
REFERENCES Shop(branch_name);

alter table Service
add constraint Service_Branch_Name_FK foreign key (branch_name)
REFERENCES Branch(branch_name);


