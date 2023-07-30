# sql-challenge
Module 9 Assignment - MONU-VIRT-DATA-PT-05-2023-U-LOLC-MTTH
Student - Mireille Walton

**Files**

-	M9_MW_CSV_Snapshots.pptx
-	M9_MW_ERD.png
-	M9_MW_Table_Schema.sql
-	M9_MW_Query_Check_Duplicates.sql
-	M9_MW_Data_Analysis.sql
-	README.md
-	Starter_Code 6>data:	
	-	departments.csv
	-	dept_emp.csv
	-	dept_manager.csv
	-	employees.csv
	-	salaries.csv
	-	titles.csv

**Approach**

-	inspect csv files: 
	-	take screenshot of header row (for column names) and first 3 rows
	-	identify common columns in each table to identify where relationships exist across tables and columns for keys

-	create ERD in htts://quickdatabasediagrams.com
	-	consider set primary, foreign, composite keys
	-	establish relationships
	-	export table schema in PostgreSQL format

-	import and run ERD table schema into PostgreSQL pgAdmin4 app
	-	consider whether adjustments required to table schema and amend/update code as necessary

-	import csv data into each table created by the ERD table schema

-	create a query to inspect each column assigned as a "key" for duplicates. Consider whether ERD requires amendment.  

-	create a query to answer specific questions required in the Data Analysis
	 
When devising the ERD as the initial step in this project, each table and the columns within has been reviewed briefly (based on snapshot as outlined in above "Approach") and consideration given as to which columns are best suited to be set as a 'primary key'.  Where there is a possibility that the column that is best suited as 'primary key' may contain duplicate values, a further assessment is made to determine whether a composite key would be the best practice approach.  

For example: within the dept_manager table, a department manager role may be shared by more than one employee; or one employee may manage one or more departments.  Accordingly both columns have been used to create a unique composite key.  The dept_emp table has been treated in a similar manner as one employee resource may be split across multiple teams. Consideration was given to the salaries data table and a decision made that a one to one connection is likely to exist between it and the employees table based on workplace payroll system experience that a singular record exists in terms staff salaries whether or not an employee works across multiple teams.  However it is noted that in practice, this connection should be adjusted according to circumstance.  

A separate query has been created for checking duplicates and preparing the data analysis.  

Each table is inspected for duplicates once the table schema has been imported into the PostgreSQL pgAdmin4 app and set key reviewed check for correctness, prior to commencing the analysis.   

**References**

POSTGRESQL TUTORIAL, “PostgreSQL Primary Key”, https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-primary-key/, accessed 29 July 2023

Lucid Software,  7 May 2017,  “Entity Relationship Diagram (ERD) Tutorial - Part 1”, https://www.youtube.com/watch?v=QpdhBUYk7Kk, accessed 29 July 2023

Lucid Software,  15 July 2017,  “Entity Relationship Diagram (ERD) Tutorial - Part 2”, https://www.youtube.com/watch?v=-CuY5ADwn24, accessed 29 July 2023

Denys Seguret, 4 July 2012, StackOverflow, “How do I select rows where a column value starts with a certain string”, https://stackoverflow.com/questions/11334674/how-do-i-select-rows-where-a-column-value-starts-with-a-certain-string, accessed 30 July 2023

W3 Schools, “SQL AND, OR and NOT Operators” date unknown, https://www.w3schools.com/sql/sql_and_or.asp, accessed 30 July 2023  




  

