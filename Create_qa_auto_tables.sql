create schema homework_19;
use homework_19;
create table car_brands (
id int,
title varchar (255)
);
create table car_models (
id int,
carBrandId int,
title varchar (255)
);
create table users (
id int, 
firstName varchar (255),
lastName varchar (255),
email varchar (255),
`password` varchar (255)
);
create table cars (
id int,
userId int,
carBrandId int,
carModelId int,
mileage float,
initialMilleage float
);

alter table car_brands modify column id int primary key;
alter table car_models modify column id int primary key;
alter table users modify column id int primary key;
alter table cars modify column id int primary key;

alter table car_models
add constraint car_models_fk
foreign key (carBrandId) references car_brands(id);

alter table cars
add constraint car_user_id_fk
foreign key (userId) references users(id);

alter table cars
add constraint car_brand_id_fk
foreign key (carBrandId) references car_brands(id);

alter table cars
add constraint cars_models_id_fk
foreign key (carModelId) references car_models(id);

insert into users 
values
 (1, 'Kate1', 'Test1', 'test1@gmail.com', '1111'),
 (2, 'Kate2', 'Test2', 'test2@gmail.com', '1112'),
 (3, 'Kate3', 'Test3', 'test3@gmail.com', '1113'),
 (4, 'Kate4', 'Test4', 'test4@gmail.com', '1114'),
 (5, 'Kate5', 'Test5', 'test5@gmail.com', '1115');
 
 insert into car_brands
 values
 (1, 'BMW'),
 (2, 'Audi'),
 (3, 'Mercedes');
 
 insert into car_models 
 values 
 (1, 1, '535'),
 (2, 1, '322'),
 (3, 1, 'X5'), 
 (4, 2, 'A4'),
 (5, 2, 'A5'),
 (6, 2, 'A6'),
 (7, 3, 'C200'), 
 (8, 3, 'E300'), 
 (9, 3, 'S600');
 
 insert into cars 
 values 
 (1, 2, 1, 3, 100.1, 3.0),
 (2, 1, 3, 8, 90.3, 10.6),
 (3, 5, 2, 5, 60.5, 6.8), 
 (4, 3, 3, 9, 50.9, 10.3),
 (5, 4, 2, 6, 20.7, 2.4);
 