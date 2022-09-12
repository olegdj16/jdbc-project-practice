select * from EMPLOYEES
where ROWNUM <=11;


select * from (select * from EMPLOYEES order by SALARY desc )
where ROWNUM<6;

select min(salary) from (select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM<6;

select * from EMPLOYEES
where SALARY = (select min(salary) from (select distinct SALARY from EMPLOYEES order by SALARY desc )
                where ROWNUM<6);



