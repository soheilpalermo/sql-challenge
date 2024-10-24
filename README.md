# sql-challenge

Employee Data Analysis Project

Overview

This project focuses on analyzing employee data for Pewlett Hackard (a fictional company) using PostgreSQL. The data provided is in the form of six CSV files that include information about employees, their departments, salaries, job titles, and department managers. The analysis includes data modeling, engineering, and a variety of queries to answer specific business questions.

The project is divided into three main parts:

Data Modeling: Designing the relational database schema to represent employee information.

Data Engineering: Creating SQL tables and importing data from CSV files.

Data Analysis: Writing SQL queries to analyze the data and extract meaningful information.



Data Modeling

The project starts by designing an Entity-Relationship Diagram (ERD) for the tables that represent the data provided in the CSV files. The tables include:

Employees: Stores employee details such as employee number, name, birth date, sex, and hire date.

Departments: Contains information about different departments.

Titles: Includes job titles assigned to employees.

Salaries: Stores employee salaries.

Dept_Emp: Stores relationships between employees and departments.

Dept_Manager: Stores information about department managers.



Data Engineering

- Using PostgreSQL, we created tables to store the data from the CSV files. The tables were created in the following order to ensure proper foreign key handling:

Titles

Departments

Employees (with a foreign key to Titles)

Salaries (with a foreign key to Employees)

Dept_Manager (with foreign keys to Departments and Employees)

Dept_Emp (with foreign keys to Departments and Employees)

Below is the SQL schema used to create these tables, specifying data types, primary keys, foreign keys, and constraints.



Data Analysis

- We performed various analyses using SQL queries, including:

Listing Employee Information and Salary:

Query to list employee number, last name, first name, sex, and salary.

Employees Hired in 1986:

Query to list the first name, last name, and hire date of employees hired in 1986.

Department Managers:

Query to list the manager of each department along with department number, department name, employee number, last name, and first name.

Employee Department Assignment:

Query to list the department number for each employee, along with employee number, last name, first name, and department name.

Employees Named Hercules with Last Name Starting with B:

Query to list the first name, last name, and sex of employees named Hercules whose last name begins with 'B'.

Employees in Sales Department:

Query to list each employee in the Sales department, including employee number, last name, and first name.

Employees in Sales and Development Departments:

Query to list each employee in the Sales and Development departments, including employee number, last name, first name, and department name.

Frequency Count of Last Names:

Query to list the frequency counts of all employee last names, in descending order.