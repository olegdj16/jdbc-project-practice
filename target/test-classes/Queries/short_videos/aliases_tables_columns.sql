
-- column aliases
select FIRST_NAME as "Given Name" from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME as "Full Name" from EMPLOYEES;

-- table aliases
select * from EMPLOYEES, JOB_HISTORY;
select EMPLOYEES.employee_id, JOB_HISTORY.job_id from EMPLOYEES, JOB_HISTORY;

select e.employee_id, j.job_id from EMPLOYEES e, JOB_HISTORY j;



