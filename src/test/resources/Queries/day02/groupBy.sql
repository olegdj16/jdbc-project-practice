select * from EMPLOYEES;


select



select avg(SALARY) from EMPLOYEES
where JOB_ID like ('IT_PROG');

select avg(SALARY) from EMPLOYEES
where JOB_ID like ('SA_REP');

select avg(SALARY) from EMPLOYEES
where JOB_ID = 'MK_MAN';

select avg(SALARY), min(SALARY), sum(SALARY), max(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';

select * from EMPLOYEES
where JOB_ID='IT_PROG';

select avg(SALARY), min(SALARY), sum(SALARY), max(SALARY), count(*) over () from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID, sum(SALARY), count(*), min(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;

