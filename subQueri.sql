-----SUBQUERY
--Get Data with conditional
SELECT *
FROM province
WHERE provinceid > 30
;

SELECT provincename
FROM province
WHERE name = "Sumatera"
;

--subquery
SELECT provincename
FROM province
WHERE provinceid > (
    SELECT pdb
    FROM province
    WHERE island = "Sumatera"
);

--AS
SELECT pdb AS "pdb Aceh"
FROM province
WHERE name = "Aceh";

SELECT name AS "ID lebih dari 1"
FROM province
WHERE provinceid >= 18
;

SELECT SUM(pdb) AS "total pdb"
FROM province
;

--Multi Table
SELECT *
FROM province
WHERE rank < (
  SELECT rank
  FROM province
  WHERE name = "Banten"
)
;