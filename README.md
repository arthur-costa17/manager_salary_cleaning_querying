# manager_salary_cleaning_querying
This is a small project where I take some publicly available data, I can't trace my steps to find where I downloaded it, but I think this person https://jtr13.github.io/cc19/ask-a-manager-salary-survey-dataset.html found the same one. I take this data and try to clean it, analyse it, and come to some conclusions.

The rest of this README will only be useful if you wish to follow along with what I was doing. That is, how I cleaned a .csv file using Python Pandas, and how I imported a .csv file into a relational database.

———————————————————————————————————————————————

DATA:

There are two files inside the data folder, one is the raw data, manager_salary_data, and another is the cleaned data, manager_salary_data_cleaned.

———————————————————————————————————————————————

CLEANING THE DATA:

There is the python folder, this folder shows what I did with Python Pandas to clean the raw data in the data folder. The cleaned version is a result of running the last line of code in the cleaning file in the python folder (it’s commented out).

———————————————————————————————————————————————

CREATING THE RELATIONAL DATABASE:

To create the relational database you will need to install PostgreSQL (psql) on your machine, as well as Docker desktop. What happens is that, using Docker, we create a container for our database. We specify the name, port, etc, and what image it uses (here it will be postgres so that we have a database). The psql_and_docker folder has the commands we need to create the container, access it using psql, and then copy the cleaned data into a table on this database.

psql_and_docker folder:

1. Run the commands in terminal_commands’ file. The first command creates a Docker container with the postgres image. The second commands accesses the container using PostgreSQL (psql).

2. When you’re inside the container (it should say the name of the container in the terminal, in this case manager_salary_project), run the first command inside the create_database file, this creates an empty table. Then run the second command which loads all of the csv data into this empty table. Beware that the path used in the file WILL NOT be the same as the path you will need to use, since you are not on the same machine as me.


———————————————————————————————————————————————

QUERIES:
