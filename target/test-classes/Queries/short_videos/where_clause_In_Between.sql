select * from EMPLOYEES;

select * from EMPLOYEES
where SALARY < 5000
and MANAGER_ID = 114;


select * from DEPARTMENTS
where LOCATION_ID between 1800 and 2400;

select * from EMPLOYEES
where SALARY between 3500 and 5000;

select * from COUNTRIES
where COUNTRY_NAME like 'Au%';

select * from COUNTRIES
where COUNTRY_NAME like 'A%';

select * from COUNTRIES
where COUNTRY_NAME like '%b%';

/*
 Text Functions: string manipulations
 1. concatenation operator: ||
 2. Concat(Value1, Value2:
 3. Upper
 4. Lower
 5. INITCAP
 6. Length
 7. replace(columnName, oldValue, newValue):
 8. substr(COlumnName, Beg index, end index):
 9. Trim(Value):
 */

-- 1. concatenation operator: ||
 select EMAIL||'@gmail.com' from EMPLOYEES;

-- 2. Concat(Value1, Value2: ABANDA@gmail.com
select concat(email, '@gmail.com') from EMPLOYEES;

select concat(concat(FIRST_NAME, ' '), LAST_NAME) from EMPLOYEES;

-- 3. Upper
select upper(FIRST_NAME) from EMPLOYEES;

--  4. Lower
select lower(FIRST_NAME) from EMPLOYEES;
select lower(UPPER(FIRST_NAME)) from EMPLOYEES;

--  5. INITCAP
select initcap(email) from EMPLOYEES;

--  6. Length
select length(FIRST_NAME) from EMPLOYEES;

--  7. replace(columnName, oldValue, newValue): EllEn MozhE ElizabEth
select replace(FIRST_NAME, 'e', 'E') from EMPLOYEES;

--  8. substr(ColumnName, Beg index, end index): llen ozhe lizabeth
select substr(FIRST_NAME, 2, 8) from EMPLOYEES;

-- display initials: EA SA MA
select substr(FIRST_NAME, 0, 1) || substr(LAST_NAME, 0, 1) from EMPLOYEES;

--  9. Trim(Value):

-- min()
select min(LOCATION_ID) from DEPARTMENTS;
--
select * from DEPARTMENTS
where LOCATION_ID = (select min(LOCATION_ID) from DEPARTMENTS);

-- max() : 2700
select max(LOCATION_ID) from DEPARTMENTS;

-- 70,Public Relations,204,2700
select * from DEPARTMENTS
where LOCATION_ID = (select max(LOCATION_ID) from DEPARTMENTS);

select avg(SALARY) from EMPLOYEES; -- 6461.831775700934579439252336448598130841
select round(avg(SALARY)) from EMPLOYEES; -- 6462

-- how many employees with manager id = 100
select count(*) from EMPLOYEES
where MANAGER_ID = 100;

-- how many employees make less than 1000
select count (*) from EMPLOYEES
where SALARY > 1000;


