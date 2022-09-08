select * from ADDRESS;

insert into ADDRESS(address_id, address, phone)
values (15, '917 Spring Gardenstreet', 2159874563);


select * from CUSTOMER;

-- add rows
insert into CUSTOMER(customer_id, first_name, last_name, address_id)
values (13, 'Oleg', 'Djimbinov', '11');

insert into CUSTOMER(customer_id, first_name, last_name, address_id)
values(1700, 'Paul', 'Walker', 15);

select * from CUSTOMER;

-- delete column
delete from CUSTOMER
where CUSTOMER_ID = 1700 and ADDRESS_ID = 15;

-- add columns
alter table CUSTOMER
add LastName varchar(20);

-- rename name of the column
alter table CUSTOMER rename column LastName  to City;

-- update
update CUSTOMER set CITY = 'Miami' where FIRST_NAME = 'Oleg';
update CUSTOMER set CITY = 'COlorado' where FIRST_NAME = 'Mary';

-- drop
alter table CUSTOMER drop column CITY;

select * from CLASSMATES;




commit work ;