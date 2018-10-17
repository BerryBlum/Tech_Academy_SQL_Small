USE db_zoo_2
GO

SELECT * FROM tbl_habitat

SELECT * FROM tbl_species WHERE species_id = 3

SELECT * FROM tbl_nutrition WHERE nutrition_cost <= 600

SELECT * FROM tbl_species WHERE species_nutrition >= 2202 AND species_nutrition <= 2206

SELECT
	a1.species_name AS [Species Name:], a2.nutrition_type AS [Nutrition Type:]
	FROM tbl_species a1
	INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition;

Select 
	a1.specialist_fname, a1.specialist_lanem, a1.specialist_contact
	FROM tbl_specialist a1, tbl_care a2, tbl_species a3
	LEFT OUTER JOIN tbl_care ON  
	;
