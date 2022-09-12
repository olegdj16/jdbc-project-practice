select * from EMPLOYEES;

select LAST_NAME||' '||FIRST_NAME as FullName from EMPLOYEES;

create view EmployeesInfo as select LAST_NAME||' '||FIRST_NAME as FullName from EMPLOYEES;

select * from EmployeesInfo;