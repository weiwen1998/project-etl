
DROP TABLE IF EXISTS Countries cascade;
DROP TABLE IF EXISTS Cost_of_Living cascade;

CREATE TABLE Countries (
Country VARCHAR PRIMARY KEY
Region	VARCHAR
Population INT
Population_Density_(/sqr-mile) FLOAT
Infant_Mortality_(per_1000_births) FLOAT
GDP_($_per_capita) FLOAT
Literacy_(%) FLOAT
Phones_(per_1000)] FLOAT
Birthrate FLOAT
Deathrate FLOAT
);

CREATE TABLE Cost_of_Living (
Country VARCHAR PRIMARY KEY NOT NULL
Cost_of_Living Index] FLOAT
Rent_Index	FLOAT
Cost_of_Living_Plus_Rent Index FLOAT
Groceries_Index FLOAT
Restaurant_Price_Index	FLOAT
Local_Purchasing_Power_Index FLOAT
);