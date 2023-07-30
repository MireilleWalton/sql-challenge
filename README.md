# sql-challenge
Module 9 Assignment - MONU-VIRT-DATA-PT-05-2023-U-LOLC-MTTH

**Background**

**Approach**

-	inspect csv files: 
	-	take screenshot of header row (for column names) and first 3 rows
	-	identify common columns in each table to identify commonalities across tables


-	create ERD in htts://quickdatabasediagrams.com
	-	consider set primary, foreign, composite keys
	-	establish relationships
	-	export table schema in PostgreSQL format

-	import and run ERD table schema into PostgreSQL pgAdmin4 app
	-	consider whether adjustments required to table schema

-	import data into each table created by the ERD table schema

-	create a query to inspect each column assigned as a "key" for duplicates
	
   

*ERD*

When devising the ERD as the initial step in this project, each table and the columns within has been reviewed briefly (based on snapshot as outlined in above "Approach") and consideration given as to which columns are best suited to be set as a 'primary key'.  Where there is a possibility that the column that is best suited as 'primary key' may contain duplicate, a further assessment is made to determine whether a composite key would be the best practice approach.  

For example: within the dept_manager table, a department manager role may be shared by more than one employee; or one employee may manage one or more departments.  Accordingly both columns have been used to create a composite key.  The dept_emp table has been treated in a similar manner as one employee resource may be split across multiple teams. 

Each table will be inspected for duplicates once the table schema has been imported into the PostgreSQL pgAdmin4 app, and the ERD adjusted as required.   


  

