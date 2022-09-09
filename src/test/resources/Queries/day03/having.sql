select * from EMPLOYEES;

select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;

select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5;

select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES));


select round(avg(SALARY)) from EMPLOYEES;

select * from EMPLOYEES
where SALARY > (select round(avg(SALARY),2) from EMPLOYEES);
