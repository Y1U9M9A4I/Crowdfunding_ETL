# Crowdfunding_ETL

In this mini-project, we analyzed crowdfunding and campaign contacts data. Following an ETL pipeline, we began by using Python, Pandas and RegEx to extract and transform data provided to us in the form of excel spreadsheets. We cleaned this data and grouped accordingly to created scrubbed csv files for creation of a database. Throughout data cleaning, we checked data to establish the suspected relationships between key variables, which aided us in the creation of an ERD diagram. This ERD diagram was used to create a base skeleton on our created Postgres database, allowing for simple editing for the creation of tables to be used for analysis. 

Upon completion of this mini-project, we have been able to utilize the following overarching topics: 
- ETL Pipeline
- Python
- Pandas
- RegEx
- ERD
- SQL

Process for evaluation of our analysis documents: 

1. Please first clone the repo into your local (inclusive of all attached files)
2. Please note the inclusion of the "Resources" folder [located in MAIN]
3. Open up the Jupyter Notebook file named: ETL_Mini_Project_YSitu_VSingh.ipynb [located in MAIN]
4. Please run the code from top to bottom, and note the created csv files in the "Resources" Folder
5. Open the ERD diagram "crowdfunding_db_schema.png" [located in MAIN]; referenced below: 

![crowdfunding_db_schema](https://github.com/Y1U9M9A4I/Crowdfunding_ETL/assets/161268182/622ab955-538d-46e3-ae89-16374afd700f)

   
6. Evaluate the relationships between tables and variables to establish query interests and parameters
7. Open up the file "crowdfunding_db_schema.sql" [located in MAIN] to analyze crowdfunding data (query) PgAdmin
8. Run the code lines 1 - 28 first, which will create the supporting tables
9. After successful creation of those tables, run lines 29 - 48 to create the final table (which includes foreign keys dependent on the previous tables)
10. Note that tables are created in the following order: Category --> Subcategory --> Contacts --> Campaign 
11. Refresh the tables tab
12. Load csv files into their corresponding tables (in the order stated above due to the existence of constraints/dependencies) [category.csv into table Category, subcategory.csv into table Subcategory, contacts.csv into table Contacts, campaign.csv into table Campaign] 
13. Please query as desired. In our code, we have test queries where we select all from the tables. Please run each query separately.
