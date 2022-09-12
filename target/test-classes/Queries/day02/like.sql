select * from DEPARTMENTS;

select * from EMPLOYEES
where FIRST_NAME like 'D%';

select * from EMPLOYEES
where FIRST_NAME like '__z__';

select * from JOBS
where JOB_TITLE like '%Manager';

select count(*) from JOBS
where JOB_TITLE like '%Manager';