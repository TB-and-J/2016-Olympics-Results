CREATE DATABASE rio_olympics;

USE rio_olympics;

CREATE TABLE country(
	id INT PRIMARY KEY,
    country varchar(100),
    population INT,
    gdp_per_capita FLOAT(10, 2)
);

CREATE TABLE sport(
	id INT AUTO_INCREMENT PRIMARY KEY,
    sport_name VARCHAR(200)
);

CREATE TABLE athlete(
	id INT PRIMARY KEY,
    name varchar(100),
    sex varchar(2),
    age INT,
    height INT,
    weight INT,
    country_id INT,
    sport_id INT,
    FOREIGN KEY (country_id)
		REFERENCES country(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	FOREIGN KEY (sport_id)
		REFERENCES sport(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE medal(
    athlete_id INT,
    country_id INT,
    gold_count INT,
    silver_count INT,
    bronze_count INT,
    FOREIGN KEY (athlete_id)
		REFERENCES athlete(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	FOREIGN KEY (country_id)
		REFERENCES country(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE event(
	id INT,
    sport_id INT,
    event_name VARCHAR(350),
    FOREIGN KEY (sport_id)
		REFERENCES sport(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);