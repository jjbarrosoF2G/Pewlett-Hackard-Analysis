# Pewlett-Hackard-Analysis

## Overview
Retirement is a critical topic for employees and employers alike. 
Pewlett Hackard (PH) is a large company facing tens of thousands of possible job openings in the near future, as evidenced by the high number of expected upcoming retirements. This analysis was made to:
- Identify the number of retiring employees per title
- Identify employees who are eligible to participate in a mentorship program. 
- To create an employee database to continue monitoring this key topic in the future.

## Results
### 1. Number of retiring employees per title
![Retiring_Titles_summary](https://github.com/jjbarrosoF2G/Pewlett-Hackard-Analysis/blob/main/queries/Retiring_titles.png)

A couple of key points are:
- Senior Engineers & Senior Staff account for 64% of the retiring titles
- They are followed by a high number of Engineers as well.
- Only 2 Managers are retiring, within such a large organization this strikes us as odd.

### 2. Employees who are eligible to participate in a mentorship program
A list with 1,549 employees from across all departments was created.
- They were all born between January 1, 1965 and December 31, 1965.
- They are eligible for a mentorship program.

### 3. Database:
A database was created based on the following ERD (Entity Relationship Diagram):
![ERD](https://github.com/jjbarrosoF2G/Pewlett-Hackard-Analysis/blob/main/EmployeeDB%20v2.png)

This not only guided the current design of the database, but by keeping each table updated, PH will be able to monitor the key topic of retirement in the future.

## Summary
There are 2 key questions to answer:
1) How many roles will need to be filled as the "silver tsunami" begins to make an impact?
90,398 employees out of the current 300,024 employees at the company, will likely retire soon. This accounts for 30.1%, a huge figure for any company.

2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There seem to be enough Mentors, with only 1.5 K employees in the program and more than 57 K senior staff members ready to retire.

Additional analysis:
- We didn't create enough analysis on the topic of Salaries. An interesting question to address is the financial impact of retiring 30% of current employees.
- We could also deep dive further into the mentorship analysis, to find if specific positions have a higher or lower probabiltiy of finding a Mentor within their future titles.


## Resources
Data Sources: You can find the data sources in the folder: https://github.com/jjbarrosoF2G/Pewlett-Hackard-Analysis/tree/main/data
The Entity Relationship Diagram (ERD) Tool was created wih Quick Database Diagrams
Software: PostgreSQL, pgAdmin

