select * from ADDRESS;

insert into ADDRESS(address_id, address, phone)
values (6, 'Barton Skyway', 78746);

create table streets(
street_id INTEGER primary key,
streetName varchar(30) null,
address_id integer references address(address_id)
);

select * from streets;

insert into streets(street_id, streetName, address_id)
values (1, 'Chandler', 10);

select * from streets;

create table cars(
    car_id integer primary key,
    "Car Make" varchar(30),
    "Car Model" varchar(30)
);

select * from cars;

create table drivers(
driver_id integer primary key,
"First Name" varchar(30),
"Last Name" varchar(30)
);

alter table drivers
add personnel_id integer references cars (car_id); -- foreign key

select * from drivers;

insert into drivers values (1, 'Oleg', 'Djimbinov', null);

insert into cars values (2, 'Honda', 'Civic');

insert into drivers values (2, 'John', 'Bright', 2);
insert into drivers values (3, 'Even', 'Hope', 2);

select * from CLASSMATES;
select * from COWORKER;

insert into COWORKER values (1, 'John', 'Green', 7);

select First_Name, LastName from CLASSMATES;



