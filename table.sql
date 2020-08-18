--BASIC CREATE TABLE
CREATE TABLE [IF NOT EXISTS] table_name
(column_table column_type [, column_table column_type] )


--create table without condition
CREATE TABLE Province (
    ProvinceID int,
    ProvinceName varchar(255),
    CapitalCityName varchar(255),
    PDB varchar(255),
    Area varchar(255),
    TotalPopulation varchar(255),
    Web varchar(255)

);

CREATE TABLE Governor (
    ProvinceID int,
    ProvinceName varchar(255),
    GovernorName varchar(255),
    dateofbirth date,
    Sex varchar(255),
    Address varchar(255),
    Education varchar(255),
    Web varchar(255)

);

CREATE TABLE Districts (
    DistrictsID int,
    ProvinceID int,
    DistrictsName varchar(255),
    CapitalCityName varchar(255),
    ProvinceName varchar(255),
    PDB varchar(255),
    Area varchar(255),
    TotalPopulation varchar(255),
    Web varchar(255)

);




--SHOW TABLE
SHOW TABLE;

SHOW province;

--DROP TABLE
DROP TABLE [IF EXISTS] table_name;
DROP province;