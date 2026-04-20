-- ============================================
-- Section A: datetime Functions
-- Name: Melody Mulei
-- Date: 17-04-2026
-- ============================================
--Part 3 – Date & Time Functions(PostgreSQL) – using: nairobi_academy
--1)	Write a query to extract the birth year, birth month, and birth day from each student's date_of_birth as three separate columns. Show first_name alongside them.
select 
first_name,
extract(year from date_of_birth) as birth_year,
extract(month from date_of_birth)as birth_month,
extract(day from date_of_birth) as birth_day
from students;

SELECT 
    first_name,
    TO_CHAR(date_of_birth, 'YYYY') AS birth_year,
    TO_CHAR(date_of_birth, 'MM') AS birth_month,
    TO_CHAR(date_of_birth, 'DD') AS birth_day
FROM students;


--2)	Write a query to show each student's full name, their date_of_birth, and their age in complete years. Order from oldest to youngest.

select 
concat(first_name,' ',last_name) as full_name,
date_of_birth,
EXTRACT(YEAR FROM AGE(date_of_birth)) AS age
from students
order by age desc;

--3)	Write a query to display each exam date in this exact format: 'Friday, 15th March 2024'.. Call the column formatted_date.
SELECT 
    TO_CHAR(exam_date, 'FMDay, FMDDth FMMonth YYYY') AS formatted_date
FROM exam_results;
