select * from employees;

-- CREATE TABLE

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

CREATE TABLE scrumteam(

    employeeId Integer PRIMARY KEY, --empid is Employee ID --> NOT NULL and UNIQUE
    firstname varchar(30) not null,  -- cant be null
    jobtitle varchar(20) not null,   -- cant be null
    age Integer,    -- there is no constraints
    salary Integer
);


select  * from scrumteam;


/*
 INSERT
INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2 ... );
 */


 INSERT INTO scrumteam (employeeId, firstname, jobtitle, age, salary)
 VALUES (1,'Mike','Tester',25,120000);

INSERT INTO scrumteam (employeeId, firstname, jobtitle, age, salary)
VALUES (2,'John','Tester',27,130000);

INSERT INTO scrumteam (employeeId, firstname, jobtitle)
VALUES (3,'Dembe','Developer');

INSERT INTO scrumteam
VALUES (4,'Henry','SM',30,150000);

select * from scrumteam;

/*
 UPDATE

  UPDATE table_name
  SET column1 = value1,
        column2 = value2 , ...
  WHERE condition;

 */

-- Increase all employees salary
UPDATE scrumteam
SET salary=salary+5000;

-- Increase Testers employees salary
UPDATE scrumteam
SET salary=salary+50000
where jobtitle='Tester';

select * from scrumteam;

-- Add age for Dembe
UPDATE scrumteam
SET age=34,salary=160000
where firstname='Dembe';

/*
 DELETE
DELETE FROM table_name
WHERE condition;
 */

 DELETE from scrumteam
 where firstname='Dembe';

select * from scrumteam;

-- commit work or commit --> BOTH works
commit ;


/*
 ALTER
 we will use this keyword to update table structure


 */

 -- ADD NEW COLUMN
ALTER TABLE scrumteam
ADD gender varchar(20);

select * from scrumteam;

-- Update all scrumteam gender as Male
UPDATE scrumteam
SET gender='Male';

-- RENAME COLUMN
ALTER TABLE scrumteam
RENAME COLUMN salary TO annual_salary;

--DROP COLUMN --> Delete from table
ALTER TABLE scrumteam
DROP COLUMN gender;

--RENAME TABLE
ALTER TABLE scrumteam
RENAME TO agileteam;

select * from scrumteam; --> scrumteam --> agileteam (renamed)

select * from agileteam;


-- TRUNCATE
TRUNCATE TABLE agileteam;

-- DROP
DROP TABLE agileteam;

--IQ--> What is the difference between DROP and TRUNCATE ?
    -- Trunc --> will delete all table content/data
    -- DROP  --> Delete table itself with datas

commit;-- to save changes

--view --> it is not exist in database with data.It is just a virtual table to reuse that query
--Table--> it is exist in database with their data


select * from EMPLOYEES;
