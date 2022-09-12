create table Developers(
Id_Number Integer primary key,
Names varchar(30),
Salary Integer
);

create table Testers(
Id_Number Integer primary key,
Names varchar(30),
Salary Integer
);

insert all
into DEVELOPERS values(1, 'Nurullah', 155000)
into DEVELOPERS values(2, 'Safwan', 142000)
into DEVELOPERS values(3, 'Ehran', 850000)
into DEVELOPERS values(4, 'Seyfo', 110000)
into TESTERS values(1, 'Seyfo', 110000)
into TESTERS values(2, 'Hakan', 105000)
into TESTERS values(3, 'Ibrohim', 100000)
select * from dual;

commit work;

select * from TESTERS;
select * from DEVELOPERS;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;

select el.employee_id, el.first_name, el.last_name, el.manager_id, e2.first_name, e2.last_name from
EMPLOYEES el join EMPLOYEES e2 on el.MANAGER_ID = e2.EMPLOYEE_ID;

select el.employee_id, el.first_name, el.last_name, el.manager_id, e2.first_name||' '||e2.last_name as FullName from
    EMPLOYEES el join EMPLOYEES e2 on el.MANAGER_ID = e2.EMPLOYEE_ID;

select e2.first_name||' '||e2.last_name as "Manager Fullname", count(*) from
    EMPLOYEES el join EMPLOYEES e2 on el.MANAGER_ID = e2.EMPLOYEE_ID group by e2.first_name||' '||e2.last_name;
