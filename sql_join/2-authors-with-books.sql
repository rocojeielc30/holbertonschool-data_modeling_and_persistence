SELECT table1.column, table2.column
FROM table1
LEFT JOIN table2
ON table2.foreign_key = table1.id;
ORDER BY 

SELECT authors.name, books.title AS author_name
FROM authors
LEFT JOIN books
ON authors.id = books.author_id
ORDER BY author_name ASC, books.title ASC;