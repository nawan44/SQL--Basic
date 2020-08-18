--descending
SELECT * FROM province ORDER BY island DESC;

--assending
SELECT * FROM province WHERE island = "Sumatera" ORDER BY provinceid ASC;


--LIMIT
SELECT * FROM province
LIMIT 5;

SELECT * 
FROM province 
WHERE province >= 30
LIMIT 3;


--DISTINCT
SELECT DISTINCT(name) FROM province;