-- ============================================
-- Section A: String Functions
-- Name: Melody Mulei
-- Date: 17-04-2026
-- ============================================
--Part 6 - SET Operators (using both databases)
--1)	Write a UNION query to show a combined list of all unique cities from the students table and the patients table. Order alphabetically.

SELECT city
FROM nairobi_academy.students
UNION
SELECT city
FROM city_hospital.patients
ORDER BY city ASC;

--2)	Write a UNION ALL query to combine all student first names and all patient full names into one list. Add a second column called source that says 'Student' or 'Patient' so you can tell where each name came from.
SELECT 
    concat(first_name,' ',last_name) AS name,
    'Student' AS source
FROM nairobi_academy.students
UNION ALL
SELECT 
    full_name AS name,
    'Patient' AS source
FROM city_hospital.patients;


--3)	Write an INTERSECT query to find cities that appear in BOTH the students table and the patients table - cities that are home to both students and patients.

SELECT city
FROM nairobi_academy.students
INTERSECT
SELECT city
FROM city_hospital.patients;


--4)	Write a query that combines all of the following into one result using UNION ALL - student names (labelled 'Student'), patient full names (labelled 'Patient'), and doctor full names (labelled 'Doctor'). Order the final result by the source label, then by name.

SELECT 
    concat(first_name,' ',last_name) AS name,
    'student' as source
FROM nairobi_academy.students
UNION ALL
SELECT 
    full_name AS name,
    'patient' as source
FROM city_hospital.patients
UNION ALL
SELECT 
    full_name AS name,
    'doctor' as source
FROM city_hospital.doctors
order by source,name;