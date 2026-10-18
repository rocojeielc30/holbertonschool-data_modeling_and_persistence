CREATE TABLE books (
	id INTEGER PRIMARY KEY,
	title TEXT NOT NULL,
	author TEXT NOT NULL,
	genre TEXT,
	price REAL,
	stock INTEGER,
	published_year INTEGER
);
