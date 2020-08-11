--descending
SELECT * FROM province ORDER BY island DESC;

--assending
SELECT * FROM province WHERE island = "Sumatera" ORDER BY provinceid ASC;


--LIMIT
SELECT * FROM province LIMIT 4;