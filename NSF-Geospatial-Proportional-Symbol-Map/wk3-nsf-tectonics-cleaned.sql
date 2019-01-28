-- Return total amount funding provided by the NSF for each organization zip code 
SELECT
	institution_name,
	SUM(expected_total_amount) AS zipcode_expected_total_amount
FROM
	wk3-nsf-tectonics
GROUP BY
	institution_name	
ORDER BY
	zipcode_expected_total_amount DESC

	
	
	
	
	
	
	
-- Return total amount funding provided by the NSF for each organization
SELECT
	inst_id,
	TRIM(institution_name) AS institution_name,
	zipcode,	
	SUM(expected_total_amount) AS inst_expected_total_amount
FROM
	wk3-nsf-tectonics
GROUP BY
	inst_id,
	institution_name,
	zipcode
ORDER BY
	inst_expected_total_amount DESC	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

-- (Do not use)
SELECT
	institution_name,
	zipcode,
	SUM(expected_total_amount) AS inst_expected_total_amount
FROM
	wk3-nsf-tectonics
WHERE
	zipcode IN ('10027','90089','80301','92093','2543') -- Problem is here 
GROUP BY
	institution_name,
	state,
	zipcode
ORDER BY
	inst_expected_total_amount DESC

