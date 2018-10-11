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

SELECT * FROM tbl_class;

UPDATE tbl_class SET class_type = 'birds' WHERE class_type = 'bird';

SELECT REPLACE(class_type, 'birds', 'bird') FROM tbl_class;

SELECT UPPER(class_type) FROM tbl_class WHERE class_type = 'birds';

CREATE TABLE tbl_persons
	(
	persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	persons_fname VARCHAR(50) NOT NULL,
	persons_lname VARCHAR(50) NOT NULL,
	persons_contact VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_persons
	(persons_fname, persons_lname, persons_contact)
	VALUES ('bob', 'smith', '232-235-5742'),
	 ('mary', 'ann', '232-235-5742'),
	 ('tex', 'burns', '232-235-5742'),
	 ('gerry', 'kerns', '232-235-5742'),
	 ('sally', 'fields', '232-235-5742');

UPDATE tbl_persons SET persons_fname = 'mars' WHERE persons_fname = 'bob';

SELECT persons_fname AS 'FirstName', persons_lname AS 'LastName', persons_contact AS 'Phone:'  FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_lname;
DELETE FROM tbl_persons WHERE persons_lname = 'smith';

DROP TABLE tbl_persons;

