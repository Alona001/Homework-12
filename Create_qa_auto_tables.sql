create schema homework_19;
use homework_19;
create table car_brands (
id int,
title varchar (255)
);
create table car_models (
id int,
carBrandId varchar (255),
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
