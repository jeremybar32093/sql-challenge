# sql-challenge

This file takes serveral data files to create a data model and postgreSQL database relating to employee and salary data. Data files can be found in the **data** folder. Outputs based off of this dataset are as follows:
* ERD diagram created using the open soource [quick database diagrams app](https://app.quickdatabasediagrams.com/#/)
  * This diagram can be found in the **ERD** folder
  * Based off of this diagram, a postgreSQL file, located in the **sql** folder, was generated also using the app. This was then used to create a postgreSQL database with all relevant tables
  * After creating the table schema, the native import/export functionality in pgAdmin was used to import the files in the **data** folder
* SQL queries analyzing the dataset loaded were run and are located in the **sql** folder. Relevant points of analysis were as follows:
  * List the following details of each employee: employee number, last name, first name, sex, and salary.
  * List first name, last name, and hire date for employees who were hired in 1986.
  * List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
  * List the department of each employee with the following information: employee number, last name, first name, and department name.
  * List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
  * List all employees in the Sales department, including their employee number, last name, first name, and department name.
  * List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
  * In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.  
* Lastly, a jupyter notebook was created and incorporated *sqlalchemy*, *pandas*, and *matplotlib* to read in data from the database and produce the following:
  * Histogram to visualize the most common salary ranges for employees
  * Bar chart of average salary by title

**NOTE:** In the jupyter notebook, a separate python file called **sql_creds.py** was created and is not included in this repo. To run the jupyter notebook, the same file must be created and variables for the relevant postgreSQL username and password must be imported into the notebook as the variables *username* and *password*. 
