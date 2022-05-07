# ETL Project

## Group Members:

(1) Hiu Lai   
(2) Navid Motlagh   
(3) Tu Cam Dang   
(4) Wei Wen Tan   
(5) Chris Burley   


## Task Components:

The ETL project that you are currently viewing comprises the following key components:

a) This ReadMe file, a document which:
    
    - Outlines the groups' key objectives. 
    - Explains each key step that the group undertook throughout the project.
    - Showcases the group's findings.


b) ETL.ipynb, a jupiter file which:

    - Reads the source data.
    - Transforms the source data to orderly, clean and useable dataframes.
    - Exports the cleaned data to a Relational Database in PostGres.

c) Schemata.sql, a document which:

    - Builds tables withing the Relational Database in PostGres.
    - Established primary keys.

d) An 'images' folder, which contains scatterplots comparing:

    - A country's cost of living (including and not including rent) versus its GDP
    - A country's birthrate versus its GDP
    - A country's deathrate versus its GDP
    - A country's literacy rate versus its GDP
    - A country's infant mortality rate versus its GDP

e) A 'resources' folder, which contains the raw data.

    - Cost_of_Living_Index_2022.csv
    - countries of the world.csv

## Key objectives:

In completing this ETL project, our group sought to explore the relationship between a country's GDP and its birthrate, deathrate, cost of living, literatcy rate and infant mortality rate. We wanted to see whether the strength of a nation's economy was linked to higher quality of life for its people, and if so, how strong the link was.

We also sought to improve our extracting, transforming and loading skills. We committed to working collaboratively for as many of the task's technical elements as possible so that each of us could engage with ALL of the coding. Working this way also meant that we could develop our practice by observing the work of others within the team when they had more refined skills in a cetain area. We avoided, for as long as was reasonable, splitting the task into discrete components and sending individuals off with a tightly defined roles that no-one else would be involved in completing. The purpose of this project, afterall, was to learn.

## Data Sources:

We started by brainstoring realtionship that we wanted to explore.
Once we had established a wishlist of sorts, we visited Kaggle.com to determine whether data sets existed for the variables in the aforementioned relationships.
We were pleased to find that data sets DID exist.

    - Cost_of_Living_Index_2022.csv
    - countries of the world.csv

We promptly downloaded them and began designing a relational database to house the data.

![alt text](Screen_Captures/Screen_Capture_1-Countries_of_the_World.png)<br>
![alt text](Screen_Captures/Screen_Capture_2-Cost_of_Living.png)

## Relational Database:

We chose to use Postgres as our Relational Database for loading our cleaned data into.
A database named CountriesDB was created.
We wrote a Schemata document, which established two tables in the database. The first was called countries and the second, cost_of_Living.
We listed each of the column headers for the tables, as well as the variable type that would be housed beneath them.
A Primary Key was assigned to each table, and in both cases it was 'Country'. The idea was that we would eventually join the two tables on 'Country' and write queries relating to the amalgimated data.

![alt text](Screen_Captures/Screen_Capture_3-Schemata.png)

## Data Fomatting:

The following process was undertaken on BOTH csv files outlined earlier.
For the purpose of this ReadMe file, we will show you how the 'countries of the world' data was formatted and cleaned.

(1) Import dependencies.

(2) Import the csv data to jupiter and create a Pandas dataframe:

![alt text](Screen_Captures/Screen_Capture_4-Data_Import_to_Jupyter.png)

(3) Choose the columns withing the data frame to display:

![alt text](Screen_Captures/Screen_Capture_5-Column_Selection.png)

(4) Remove all spaces from the column headers and replace them with underscores.

(This was necessary because spaces in the column header names causes errors in the Postgres schemata.)

![alt text](Screen_Captures/Screen_Capture_6-Space_Removal.png)

(5) Convert all country names to a format that removes 'the', any unnessessary spaces and any special characters. Also ensure that the first letter is capitalised, but all remaining letter is the name are lower-case.

(This was necessary becasue we intended to join our PostGres tables based on 'Country'. A mismatch in formatting or name style would lead to errors, so uniformity was important.)

![alt text](Screen_Captures/Screen_Capture_7-Country_Name_Conversion.png)

(6) Convert decimal numbers in the data which are expressed using European conventions (commas) to digits with a full-stop for the decimal point. 

![alt text](Screen_Captures/Screen_Capture_8-Decimal_Points_Not_Commas.png)

## Connection and loading to PostGres:

A connection was then made between the Jupyter notebook and the PostGres database established earlier.
This would allow the transfer of the cleaned table data.

![alt text](Screen_Captures/Screen_Capture_9-Connection_PostGres.png)
![alt text](Screen_Captures/Screen_Capture_10-Loading_to_PostGres.png)

## Transformations:

A, SQL query was then written to join the two tables in the PostGres database.

![alt text](Screen_Captures/Screen_Capture_11-Join_Query.png)

Further SQL queries were written to isolate the pairs of variables that the group set out to explore the relationship between.

![alt text](Screen_Captures/Screen_Capture_12-Search_Query.png)

MatPlotLib was used to create Scatterplots for:

    - A country's cost of living (including and not including rent) versus its GDP
    - A country's birthrate versus its GDP
    - A country's deathrate versus its GDP
    - A country's literacy rate versus its GDP
    - A country's infant mortality rate versus its GDP

![alt text](Screen_Captures/Screen_Capture_13-MatPlotLib.png)

Lastly, SQL queries were written to rank each country on the list by each of the variable listed immediately above.
Below is a screen capture showing the literacy rankings.

![alt text](Screen_Captures/Screen_Capture_15-Ranking.png)

We then created a master CSV showing how each country ranked in terms of each variable.

![alt text](Screen_Captures/Screen_Capture_15-Countries_Rank_Overview.png)

## Findings:

Literacy versus GDP - Inroduction

GDP is one the most important factors in literacy rate. Government expenditure in education(function of GDP) and foreign direct investments and openness to trade(contributing factors to GDP) have positive relationships with literacy rates. This means that as the GDP per capita grows so does the literacy rate and vice versa.


Insight 1

As is demonstrated in the graph, there is a positive non-linear relationship between GDP(per capita) and literacy rate.
It can be concluded that higher GDP would result in higher literacy rate. Therefore, to acheive a higher literacy rate, governments can take proper initiatives such as consistent increase in the education sector share of the budget, making primary/secondary education compulsory and developing educational infrastructures. 

These measures will lead to growth in GDP per capita, and ultimately resulting in overall development of the country.


Insight 2

It can be observed, as is expected due to the exponentional(non-linear) regression between GDP and Literacy rate, that the behavior of the graph changes.At a certain point, GDP growth accelarates whereas there is minimal change in literacy rate.
This can be due to the fact that although literacy rate is a basic effective factors in GDP growth, it is only one of many. In fact, even though literacy rate is vital to GDP, other factors start to gain significant importance at a certain point, namely good govenrnance, democratic indexes, political, economic and social freedoms, openness to trade and foreign direct investment.

To conclude, this analysis suggests that, along with investment in education, governments pursue political, economic and social development, enhance democratic indexes, and absorb foreign investments to increase GDP.

![alt text](Screen_Captures/Screen_Capture_14-Literacy.png)