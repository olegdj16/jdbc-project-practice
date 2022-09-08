select names from DEVELOPERS
union all
select names from TESTERS;

select NAMES from DEVELOPERS
union all
select NAMES from TESTERS;

select NAMES from DEVELOPERS
minus
select NAMES from TESTERS;

select NAMES from DEVELOPERS
intersect
select NAMES from TESTERS;



