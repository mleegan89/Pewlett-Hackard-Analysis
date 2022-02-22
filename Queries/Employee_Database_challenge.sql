--Deliverable 1: The Number of Retiring Employees by Title
--Retirement Titles csv

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (e.emp_no)


-- Unique Titles csv
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name, 
title

INTO unique_ret_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

--Count of Retiring Titles csv
SELECT COUNT(emp_no), title
INTO retiring_titles_count
FROM unique_ret_titles
GROUP BY title
ORDER BY count DESC;

--DELIVERABLE 2: The Employees Eligible for the Mentorship Program

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date, 
de.from_date, 
de.to_date, 
ti.title

INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE(de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;