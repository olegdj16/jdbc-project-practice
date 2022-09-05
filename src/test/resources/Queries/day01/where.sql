select * from EMPLOYEES;


select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME = 'David';

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME = 'David' and LAST_NAME='Lee';

select * from EMPLOYEES
where SALARY>6000;

select distinct FIRST_NAME, SALARY from EMPLOYEES
where SALARY>6000;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY>= 3000 and SALARY<=6000;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='SA_REP';


select * from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

select * from EMPLOYEES
where JOB_ID not in ('IT_PROG','SA_REP','FI_MGR');

select * from LOCATIONS;

select * from LOCATIONS
where CITY in ('Roma','Tokyo');

















