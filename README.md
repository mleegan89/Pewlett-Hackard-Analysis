# Pewlett-Hackard-Analysis

## Overview of Analysis
The purpose of this analysis was to determine the number of retiring employees per title and identify the employees who are eligible to participate in a mentorship program. This analysis will help forecast the upcoming problems that may be faced with a large number of employees reaching retirement age. 

## Results
Using the below SQL code in pgAdmin we were able to use the employees and titles data to create a list of employees that were born between Jan 1, 1952 and Dec 31, 1955. The next step was to refine the list to show only current employees. In the final step, we grouped this list by job titles. 

<img width="449" alt="image" src="https://user-images.githubusercontent.com/96085210/155042230-34cdd6b5-bd66-4308-856c-3e7a119cf641.png">

The image below shows the results from our SQL code described above. 

<img width="149" alt="image" src="https://user-images.githubusercontent.com/96085210/155042472-52052d06-dfe3-43c2-be38-105309b7713e.png">

The next step in our analysis was to determine the employees who are eligible to participate in the mentorship program. By using the data from the employees, dept_emp, and titles tables we selected and filtered the data to show only current employees that were born between Jan 1, 1965 and Dec 31, 1965. 

<img width="409" alt="image" src="https://user-images.githubusercontent.com/96085210/155042581-c01f8566-a99d-4217-908f-b657f7e0bfe6.png">

The image below shows a sample of the results from our SQL code described above.

<img width="415" alt="image" src="https://user-images.githubusercontent.com/96085210/155042753-9c19d1d9-1204-49a2-a7c2-585ee09eca3e.png">


## Summary

By looking at the results we can see that there will be a large number of Senior Engineers and Senior Staff retiring in the coming years. This should be used to help forecast hiring for certain positions as well as developing current existing talent within the organization to backfill open positions. There are also over 1,500 employees eligible for the mentorship program. Without looking at historical data, it is unclear whether this is a similiar amount to previous years. If not, it will be neccessary to forecast for increased resources to efficiently conduct this mentorship program. 
