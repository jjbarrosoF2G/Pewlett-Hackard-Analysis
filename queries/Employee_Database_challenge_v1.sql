-- Deliverable #1
-- 1) Query to create a Retirement Titles table for employees born between January 1, 1952 and December 31, 1955
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
    t.title, 
	t.from_date, 
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t 
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles;

-- 2) Query to create a Unique Titles table that contains: employee number, first and last name, and most recent title.
SELECT DISTINCT ON (rt.emp_no)
		rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- 3) Query to create a Retiring Titles table that contains the number of titles filled by employees who are retiring.
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT DESC; 

SELECT * FROM retiring_titles;

-- DELIVERABLE #2
-- 1) Employees eligible for a mentorship program who were born between January 1, 1965 and December 31, 1965
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)    
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)  
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no

-- View mentorship_eligibility table
SELECT * FROM mentorship_eligibility;