select * from books;

-- Display book name and related bookCategory name from library DB

select b.name,bc.name from books b
    inner join book_categories bc on b.book_category_id = bc.id;



-- Find me first 5 highest book categories based on book count
select book_category_id,count(*) from books
group by book_category_id
order by 2 desc
limit 5;

-- Find me how many book we have in each category_id
select book_category_id,count(*) from books
group by book_category_id
order by 2 desc;


-- Find me how many book we have in each category_name
select bc.name,count(*) from books b
                               inner join book_categories bc on b.book_category_id = bc.id
group by bc.name
order by 2 desc;