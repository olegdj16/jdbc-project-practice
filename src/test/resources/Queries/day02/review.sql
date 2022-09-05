select * from EMPLOYEES;

select * from JOBS;

select * from JOBS
where JOB_TITLE in ('President', 'Sales Manager', 'Finance Manager');

select * from DEPARTMENTS
where MANAGER_ID is not NULL ;

select * from LOCATIONS
where COUNTRY_ID in ('US', 'UK');

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME not in ('Belgium');
