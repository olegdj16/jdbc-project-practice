
-- group by

select JOB_ID from EMPLOYEES
group by JOB_ID;

select JOB_ID, count(*) from EMPLOYEES
group by JOB_ID;

select JOB_ID, max(SALARY) from EMPLOYEES
group by JOB_ID;

-- having

select JOB_ID, count(*) from EMPLOYEES
group by JOB_ID having max(SALARY) > 2000;

select JOB_ID from EMPLOYEES
group by JOB_ID having avg(SALARY) > 6000;