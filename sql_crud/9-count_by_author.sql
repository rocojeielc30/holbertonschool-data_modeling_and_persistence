SELECT author, SUM(books) FROM books
GROUP BY author;