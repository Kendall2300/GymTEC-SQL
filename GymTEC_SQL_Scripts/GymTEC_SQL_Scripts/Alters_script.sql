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
REFERENCES Gear_avaible(gear_id);

alter table Spa
add constraint Spa_Branch_FK foreign key (branch_name)
REFERENCES Branch(branch_name);

alter table Spa
add constraint Spa_Treatment_FK foreign key (treatment_id)
REFERENCES Treatment(treatment_id);

alter table Shop
add constraint Shop_Branch_FK foreign key (branch_name)
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