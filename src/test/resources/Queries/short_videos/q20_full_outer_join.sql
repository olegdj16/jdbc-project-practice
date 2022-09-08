select * from CUSTOMER c full outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null or a.ADDRESS_ID is null ;

