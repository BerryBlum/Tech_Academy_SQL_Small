USE db_zoo

CREATE TABLE tbl_animalia
	(
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1, 1),
	animalia_type VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_animalia (animalia_type)
	VALUES ('vertebrate'), ('invertebrate');

CREATE TABLE tbl_class
	(
	class_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	class_type VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_class (class_type)
	VALUES ('bird'),('reptilian'), ('mamal'), ('anthropod'),('fish'),('worm'),
	('cnidaria'),('echinoderm');

CREATE TABLE tbl_order
	(
	order_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	order_type VARCHAR(50)
	);

CREATE TABLE tbl_care
	(
	care_id VARCHAR (50) PRIMARY KEY NOT NULL,
	care_type VARCHAR(50) NOT NULL,
	care_specialist INT NOT NULL
	);

CREATE TABLE tbl_nutrition
	(
	nutrition_id INT PRIMARY KEY NOT NULL IDENTITY(2200,1),
	nutrition_type VARCHAR(50) NOT NULL,
	nutrition_cost MONEY NOT NULL
	);

CREATE TABLE tbl_habitat
	(
	habitat_id INT PRIMARY KEY NOT NULL IDENTITY (5000,1),
	habitat_type VARCHAR(50) NOT NULL,
	habitat_cost MONEY NOT NULL
	);

CREATE TABLE tbl_specialist
	(
	specialist_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	specialist_fname VARCHAR(50) NOT NULL,
	specialist_lanem VARCHAR(50) NOT NULL,
	specialist_contact VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_order(order_type)
	VALUES ('carnivore'), ('herbivore'), ('omnivore');

SELECT * FROM tbl_order;

INSERT INTO tbl_care(care_id, care_type, care_specialist)
	VALUES ('care_0', 'replace the straw', 1), ('care_1', 'repair or replace broken toys', 4),
	('care_2', 'bottle feed vitamins', 1), ('care_3', 'human contact_pet subject', 2), ('care_4', 'clean up animal waste', 1),
	('care_5', 'move subject to excersize pen', 3), ('care_6', 'drain and refill aquarium', 1), ('care_7', 'extensive dental work', 3);

SELECT * FROM tbl_care;

INSERT INTO tbl_nutrition(nutrition_type, nutrition_cost)
	VALUES ('raw fish', 1500), ('living rodents', 600), ('mixture of fruit and rice', 800),
	('warm bottle of milk', 600), ('syringe feed broth', 600), ('lard and seed mix', 300), ('aphids', 150),
	('vitamins and marrow', 3500);

SELECT * FROM tbl_nutrition;

Insert into tbl_habitat(habitat_type, habitat_cost)
	Values ('tundra', 40000), ('grassy gnoll wit htrees', 412000),
	('10ft pond and rocks', 30000), ('icy aquarium with snowy facade', 50000),
	('short grass, shade, moat', 50000), ('netted forest atrium', 10000),
	('jungle vines and winding branches', 15000), ('cliff with shaded cave', 15000);

Select * from tbl_habitat;

Insert Into tbl_specialist(specialist_fname, specialist_lanem, specialist_contact)
	Values('margret', 'nguyen', '542-256-6421'),
	('mary', 'fischer', '542-256-6421'),
	('arnold', 'holden', '542-256-6421'),
	('kem', 'byesan', '542-256-6421'),
	('delmonte', 'fyedo', '542-256-6421');

Select * from tbl_specialist;

Create Table tbl_species
	(
	species_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	species_name VARCHAR (50) NOT NULL,
	species_animalia INT NOT NULL CONSTRAINT fk_animalia_id FOREIGN KEY REFERENCES tbl_animalia(animalia_id) ON UPDATE CASCADE ON DELETE CASCADE,
	species_class INT NOT NULL CONSTRAINT fk_lass_id FOREIGN KEY REFERENCES tbl_class(class_id) ON UPDATE CASCADE ON DELETE CASCADE,
	species_order INT NOT NULL CONSTRAINT fk_order_id FOREIGN KEY REFERENCES tbl_order(order_id) ON UPDATE CASCADE ON DELETE CASCADE,
	species_habitat INT NOT NULL CONSTRAINT fk_habitat_id FOREIGN KEY REFERENCES tbl_habitat(habitat_id) ON UPDATE CASCADE ON DELETE CASCADE,
	species_nutrition INT NOT NULL CONSTRAINT fk_nutrition_id FOREIGN KEY REFERENCES tbl_nutrition(nutrition_id) ON UPDATE CASCADE ON DELETE CASCADE,
	species_care VARCHAR(50) NOT NULL CONSTRAINT fk_care_id FOREIGN KEY REFERENCES tbl_care(care_id) ON UPDATE CASCADE ON DELETE CASCADE
	);

Insert into tbl_species
	(species_name, species_animalia, species_class, species_order, species_habitat, species_nutrition, species_care)
	Values ('brown bear', 1, 102, 3, 5007, 2200, 'care_1'),
	('jaguar', 1, 102, 1, 5007, 2200, 'care_4'),
	('penguin', 1, 100, 1, 5003, 2200, 'care_6'),
	('ghost bat', 1, 102, 1, 5007, 2204, 'care_2'),
	('chicken', 1, 100, 3, 5001, 2205, 'care_0'),
	('panda', 1, 102, 3, 5006, 2202, 'care_4'),
	('bobcat', 1, 102, 1, 5001, 2204, 'care_5'),
	('grey wolf', 1, 102, 1, 5000, 2201, 'care_4');

SELECT * FROM tbl_species;
