# ETL-Project

## ATTN for use: 
  * IMDB csv file in resources was too large for a standard github upload and had to be compressed. Please expand for proper functionality
  * In first cell of ETL.ipynb be sure to change server information (username, password, database name) to match local postgres setup
  
### Extract:
  For this project I chose to use 2 CSV files found on kaggle.com related to movies. One showcasing the netflix media catalog offering while the other contained IMBD media information. Both sources could be loaded into a jupyter notebook using the read_csv offered by Pandas
  
### Transform:
  From the last project I learned that cleaning data can be an absolute nightmare. This round considering that the project was done solo and that we only had a week to complete I decided to work with much cleaner datasets. Both sets had very usable data. I used dataframe manipulation to remove columns that were not of interest or not complete and create a new dataframe that could be worked with.
  
### Load:
  The film related dataframes were loaded into a postgres database using sqlalchemy's to_sql feature offed by the sqlalchemy engine. I decided to create the sql tables ahead of time in pgadmin and then update them with information from the pandas dataframes. After, in the query.sql file I show two potential queries where follow up analysis can be done. One being looking at the IMDB contained reviews of the netflix catalog. The second looking at the fiscal properties of the netflix catalog.  
