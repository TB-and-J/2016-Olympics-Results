CREATE DATABASE rio_olympics_db;

USE rio_olympics_db;

CREATE TABLE country(
	id INT,
    country varchar(200),
    population INT,
    gdp_per_capita FLOAT (12,2)
);

CREATE TABLE sport(
	id INT,
    sport VARCHAR(200)
);

CREATE TABLE athlete(
	id INT,
    name varchar(100),
    sex varchar(2),
    age INT,
    height INT,
    weight INT
);

CREATE TABLE medal(
	medal_count INT, 
    gold_count  INT,
    silver_count INT,
    bronze_count INT
);

CREATE TABLE event(
	id INT,
    sport VARCHAR(350),
    event VARCHAR(350)
);




