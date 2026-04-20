-- ============================================
-- Section A: String Functions
-- Name: Melody Mulei
-- Date: 17-04-2026
-- ============================================

--1)	Write a query to display each student's full name in UPPERCASE and their city in lowercase. Name the columns upper_name and lower_city.
SELECT 
    UPPER(CONCAT(first_name, ' ', last_name)) AS upper_name,
    LOWER(city) AS lower_city
FROM students;

--2)	Write a query to show each student's first name and the LENGTH of their first name. Order the results from longest to shortest name.
select
first_name,
length(first_name) as name_length
from students
order by name_length desc;

--3)	Write a query to show each subject's name and a short version - the first 4 characters of the subject name ... called short_name. Also show the full subject name length.
select subject_name,
substr(subject_name,1,3) as short_name,
length(subject_name) as name_length
from subjects;

--4)	Write a query using CONCAT to produce a sentence for each student in this format: 'Amina Wanjiku is in Form 3 and comes from Nairobi'. Call the column student_summary.
SELECT 
    CONCAT(first_name, ' ', last_name, 
           ' is in ', class, 
           ' and comes from ', city) AS student_summary
FROM students;
