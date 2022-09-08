select * from CUSTOMER;
select * from ADDRESS;

select * from CUSTOMER inner join ADDRESS A2
on A2.ADDRESS_ID = CUSTOMER.ADDRESS_ID;

select CUSTOMER.address_id, CUSTOMER.first_name, CUSTOMER.last_name, ADDRESS.address, ADDRESS.phone
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER c inner join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID

select * from COUNTRIES;

select * from LOCATIONS L inner join COUNTRIES C
on l.COUNTRY_ID = c.COUNTRY_ID;

select c.COUNTRY_NAME, l.CITY from LOCATIONS L inner join COUNTRIES C on l.COUNTRY_ID = c.COUNTRY_ID;