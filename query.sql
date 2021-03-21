-- Create a table to hold Netflix information
CREATE TABLE netflix_data (
	show_id TEXT PRIMARY KEY,
	title TEXT,
	type TEXT,
	director TEXT,
	country TEXT,
	release_year TEXT,
	rating TEXT,
	duration TEXT,
	listed_in TEXT,
	description TEXT
);

--Create a table to hold IMDB information
CREATE TABLE imdb_data (
	imdb_title_id TEXT PRIMARY KEY,
	title TEXT,
	year TEXT,
	genre TEXT,
	budget TEXT,
	usa_gross_income TEXT,
	worlwide_gross_income TEXT,
	metascore TEXT,
	reviews_from_users TEXT,
	reviews_from_critics TEXT
);

--Verify that information was properly imported from jupyter notebook dataframes
SELECT * FROM netflix_data;
SELECT * FROM imdb_data;

--Join to view ratings/reviews of netflix catalog
SELECT n.title, n.release_year, i.metascore, i.reviews_from_users, i.reviews_from_critics
FROM imdb_data AS i
INNER JOIN netflix_data AS n ON
n.title=i.title;

--Join to view have netflix catalog margin data
SELECT n.title, n.release_year, i.budget, i.usa_gross_income, i.worlwide_gross_income
FROM imdb_data AS i
INNER JOIN netflix_data AS n ON
n.title=i.title;