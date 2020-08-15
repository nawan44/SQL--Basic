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
SELECT * FROM province
WHERE rank < (
  SELECT rank FROM province WHERE name = "Banten"
);

--Merge Table
SELECT SUM(pdb), provinceid
FROM province
GROUP BY provinceid
;

--Joint Table
SELECT *
FROM provincename
JOIN  capitalcityname
ON provinceid = districtid;

SELECT province.provincename, district.districtname
FROM provincename
JOIN  district
ON provinceid = districtid;

SELECT *
FROM province 
JOIN Governor
ON province.provinceid = Governor.id;

SELECT province.name AS "Nama Gubernur", Governor.name AS "Name Governor"
FROM province
JOIN Governor
ON province.provinceid = Governorid
;


--LEFT JOINT
SELECT *
FROM province
LEFT JOIN Governor
ON province.provinceid = Governorid;






SELECT *
FROM players
LEFT JOIN teams
ON players.previous_team_id = teams.id
;

SELECT players.name AS "nama pemain", teams.name AS "tim (tahun lalu)"
FROM players
LEFT JOIN teams
ON players.previous_team_id = teams.id
;

--MERGE 3 table
SELECT *
FROM province
JOIN district
ON province.provinceid = districtid
LEFT JOIN Governorid
ON province.provinceid = Governorid
;


SELECT name AS "nama provinsi", height AS "nilai pdb"
FROM province
WHERE pdb > (
  SELECT AVG(pdb)
  FROM province
);

SELECT *
FROM province
JOIN district
ON province.districtid = districtid
WHERE district.name = "Jepang"
AND pdb >= 180
;

SELECT province.name AS "nama provinsi", AVG(pdb) AS "pdb rata-rata" 
FROM province
JOIN district
ON province.provinceid = provinceid
GROUP BY JOIN district
.name
;




















