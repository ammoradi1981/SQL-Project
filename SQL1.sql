
SELECT * FROM  staff;
select*from category;
select*from city;
select*from country;

SELECT Staff.staff_id, Category.name
FROM Staff
INNER JOIN Category
ON Staff.staff_id = Category.category_id;


