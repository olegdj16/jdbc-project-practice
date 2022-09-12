select * from LOCATIONS;

select distinct FIRST_NAME from EMPLOYEES;
select count(distinct FIRST_NAME) from EMPLOYEES;


select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null;

select max(SALARY) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;


select round(avg(salary),1) from EMPLOYEES;









