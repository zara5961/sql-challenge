
# Employee Database Project
![Pewlett Hackard](Images/company.jpg)

## Project Overview

This project is designed to manage and analyze employee data for a company. It involves creating a structured database that contains details about employees, their departments, titles, salaries, and managerial assignments. The project makes use of multiple SQL scripts for database creation and data analysis, along with CSV files to populate the database.

## Database Schema and ERD
![Employee](Images/people.jpg)

The database schema consists of six main tables:

1. **departments**: Stores information about different departments.
   - `dept_no` (Primary Key)
   - `dept_name` (VARCHAR(50))

2. **titles**: Contains job titles.
   - `title_id` (Primary Key)
   - `title` (VARCHAR(30))

3. **employees**: Contains employee details.
   - `emp_no` (Primary Key)
   - `emp_title_id` (Foreign Key referencing `titles.title_id`)
   - `birth_date` (DATETIME)
   - `first_name` (VARCHAR(30))
   - `last_name` (VARCHAR(30))
   - `sex` (VARCHAR(1))
   - `hire_date` (DATETIME)

4. **departments_employees**: Maps employees to their respective departments.
   - `emp_no` (Foreign Key referencing `employees.emp_no`)
   - `dept_no` (Foreign Key referencing `departments.dept_no`)

5. **managers**: Lists department managers.
   - `dept_no` (Foreign Key referencing `departments.dept_no`)
   - `emp_no` (Foreign Key referencing `employees.emp_no`)

6. **salaries**: Contains salary information for employees.
   - `emp_no` (Foreign Key referencing `employees.emp_no`)
   - `salary` (INT)

Refer to the provided Entity-Relationship Diagram (ERD) for a visual representation of the schema and the relationships between the tables.

## Data Description

The project includes the following CSV files, which are used to populate the database:

- `departments.csv`: Contains department numbers and names.
- `dept_emp.csv`: Maps employees to departments.
- `dept_manager.csv`: Lists department managers and their departments.
- `employees.csv`: Contains details about employees, including their employee number, name, birth date, and gender.
- `salaries.csv`: Contains the salary details for each employee.
- `titles.csv`: Contains job title information.

## SQL Files and Scripts

Several SQL scripts are provided to create and manage the database:

- **`Data Analysis-1.sql` to `Data Analysis-8.sql`**: Scripts for data analysis.
- **`employee_schema.sql`**: Script to create the database schema.

Each script is designed to run in sequence for creating the tables, inserting data, and performing data analysis.

## How to Use This Project

### Prerequisites

- PostgreSQL or any compatible SQL database management system.
- Basic knowledge of SQL.
- Python (optional, if you plan to manipulate data using Python libraries).

### Installation

1. Install PostgreSQL or another SQL database management system.
2. Clone this repository to your local machine.
3. Use the SQL scripts to set up the database schema and populate it with data from the provided CSV files.

### Usage

1. Open your SQL client (e.g., pgAdmin, DBeaver, etc.).
2. Run the `employee_schema.sql` script to create the necessary tables.
3. Load the data from the CSV files into the respective tables.
4. Run the `Data Analysis-1.sql` to `Data Analysis-8.sql` scripts sequentially to perform the data analysis.


## Conclusion

The Employee Database Project provides a comprehensive system to manage employee information, analyze salary trends, and understand organizational structure through a well-defined relational database schema. It serves as a robust foundation for further enhancements such as integrating additional data sources or building more complex analytics. By following the steps outlined in this README, users can efficiently set up and utilize the system for their specific needs.

