CREATE TABLE crime_time_table(
	incident_id BIGINT,
	offense_id BIGINT,	
	first_occurrence TIMESTAMP,
	last_occurrence TIMESTAMP,
	reported_date TIMESTAMP,
	PRIMARY KEY (offense_id)
);

CREATE TABLE crime_place_table(
	incident_id BIGINT,
	offense_id BIGINT,
	address TEXT,
	neighborhood TEXT,
	district_precinct_id TEXT,	
	PRIMARY KEY (offense_id)
);

CREATE TABLE offense_codes(
	offense_code_ext TEXT,
	offense_name TEXT,
	offense_category TEXT,
	is_crime INT,
	is_traffic INT,
	PRIMARY KEY (offense_code_ext)	
);

CREATE TABLE crime_table(
	incident_id BIGINT,
	offense_code_ext BIGINT,
	is_crime INT,
	is_traffic INT,
	PRIMARY KEY (incident_id, offense_code_ext)
);

SELECT * from crime_table;