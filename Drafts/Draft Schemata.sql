DROP TABLE IF EXISTS countries cascade;
DROP TABLE IF EXISTS cost_of_Living cascade;

CREATE TABLE countries (
"Country" VARCHAR PRIMARY KEY NOT NULL,  
"Region" VARCHAR,  
"Population" INT,  
"Pop._Density_(per_sq._mi.)" FLOAT, 
"Net_migration" FLOAT,  
"Infant_mortality_(per_1000_births)" FLOAT, 
"GDP_($_per_capita)" FLOAT,  
"Literacy" FLOAT,  
"Phones_(per_1000)" FLOAT,  
"Birthrate" FLOAT, 
"Deathrate" FLOAT
);

CREATE TABLE cost_of_Living (
"Country" VARCHAR PRIMARY KEY NOT NULL,
"Cost_of_Living_Index" FLOAT,
"Rent_Index"	FLOAT,
"Cost_of_Living_Plus_Rent_Index" FLOAT,
"Groceries_Index" FLOAT,
"Restaurant_Price_Index"	FLOAT,
"Local_Purchasing_Power_Index" FLOAT
);