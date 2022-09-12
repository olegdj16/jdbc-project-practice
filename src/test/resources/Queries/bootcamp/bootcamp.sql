select FIRST_NAME,count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;

select FIRST_NAME from EMPLOYEES
order by FIRST_NAME asc;

select FIRST_NAME,count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;

select distinct FIRST_NAME from EMPLOYEES;



-- Display all department names and city names from hr
select city,DEPARTMENT_NAME from DEPARTMENTS d
    inner join LOCATIONS L on d.LOCATION_ID = L.LOCATION_ID;


-- Display all department names and city names from hr
-- include those cities with no departments
select * from DEPARTMENTS;
select * from locations;
-- RIGHT
select l.LOCATION_ID,city,DEPARTMENT_NAME from departments d
    right join LOCATIONS L on L.LOCATION_ID = d.LOCATION_ID;

-- LEFT
select l.LOCATION_ID,city,DEPARTMENT_NAME from LOCATIONS l
                 left join DEPARTMENTS d  on l.LOCATION_ID = d.LOCATION_ID;

-- FULL
select l.LOCATION_ID,city,DEPARTMENT_NAME from LOCATIONS l
                                                   full  join  DEPARTMENTS d  on l.LOCATION_ID = d.LOCATION_ID;

