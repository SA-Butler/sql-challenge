# sql-challenge
Module 9 Challenge

In this solution to the challenge (in EmployeeSQL directory) there are two SQL Files, namely Development-TableSet.sql (which contains the table creation script) and Emp_db-Queries.sql (which contains the solution script to the queries set in the assignment, suitably annotated with comments relating to the relevant question to be answered).

For the import of the csv files (in the DATA Directory) to populate the tables, it was found necessary to import in the following order:

1. Titles
2. Employees
3. Salaries
4. Departments
5. Dept_Emp
6. Dept_Manager

Some difficuties were found with the DATE types. However, on taking advice, a VARCHAR type was utilised with the search executed on the year at the end of the field. This would need looking at for additional queries containing dates.
