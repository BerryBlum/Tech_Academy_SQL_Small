USE db_zoo_2
GO
--DRILL 1
SELECT * FROM tbl_habitat
--DRILL 2
SELECT * FROM tbl_species WHERE species_id = 3
--DRILL 3
SELECT * FROM tbl_nutrition WHERE nutrition_cost <= 600
--DRILL 4
SELECT * FROM tbl_species WHERE species_nutrition >= 2202 AND species_nutrition <= 2206
--DRILL 5
SELECT
	a1.species_name AS [Species Name:], a2.nutrition_type AS [Nutrition Type:]
	FROM tbl_species a1
	INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition;

--DRILL 6
Select 
	a1.specialist_fname, a1.specialist_lanem, a1.specialist_contact
	FROM tbl_specialist a1
	LEFT OUTER JOIN tbl_care a2 ON a2.care_specialist = a1.specialist_id
	INNER JOIN tbl_species a3 ON a3.species_care = a2.care_id
	WHERE a3.species_name = 'penguin'
	;


--DRILL 7--
CREATE DATABASE drill_7
USE drill_7


CREATE TABLE tbl_second_thing
	(
		persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		persons_address VARCHAR(100) NOT NULL,
		persons_phone VARCHAR(20) NOT NULL
	);


CREATE TABLE tbl_first_thing
	(
		persons_fname VARCHAR(20) NOT NULL,
		persons_lname VARCHAR(20) NOT NULL,
		persons_personal INT NOT NULL CONSTRAINT fk_persons_id FOREIGN KEY REFERENCES tbl_second_thing(persons_id) ON UPDATE CASCADE ON DELETE CASCADE
	);

INSERT INTO tbl_first_thing(persons_fname, persons_lname, persons_personal)
	VALUES ('Nancy', 'Hammock', 1), ('Drew', 'Clement', 2),
	('Frederick', 'Bowler', 3), ('Incontinentia', 'Buttocks', 4);

INSERT INTO tbl_second_thing(persons_address, persons_phone)
	VALUES ('12875 125st Blvd NnE, Straight of Juan de Fuca 00258', '425-999-9999'),
	('12632 941th St SsW, Atlantis #####', '###-###-####'),
	('4139 100289th Ave HothotHot Sun 4377', '666-666-6642'),
	('625841258946 1st Pl SE, Great Britain 3.14159', '13-58-96-45-15');

SELECT 
	a1.persons_fname, a1.persons_lname,
	a2.persons_address, a2.persons_phone
	FROM tbl_first_thing a1
	JOIN tbl_second_thing a2 ON a2.persons_id = a1.persons_personal;
	