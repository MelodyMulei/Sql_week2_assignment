
-- ============================================
-- Section A: Join Functions
-- Name: Melody Mulei
-- Date: 17-04-2026
-- ============================================

--1) Write an INNER JOIN query to show each appointment alongside the patient's full name, the doctor's full name, the appointment date, and the diagnosis.

SELECT 
    p.full_name AS patient_name,
    d.full_name AS doctor_name,
    a.appt_date,
    a.diagnosis
FROM appointments a
INNER JOIN patients p 
    ON a.patient_id = p.patient_id
INNER JOIN doctors d 
    ON a.doctor_id = d.doctor_id;

--2)	Write a LEFT JOIN query to show ALL patients - and if they have an appointment, show the appointment date and diagnosis. Patients with no appointments should still appear with NULL values

SELECT 
    p.full_name AS patient_name,
    a.appt_date,
    a.diagnosis
FROM patients p
LEFT JOIN appointments a
    ON p.patient_id = a.patient_id;

--3)	Write a RIGHT JOIN query to show ALL doctors - and if they have seen a patient, show the patient name. Doctors with no appointments should still appear.

SELECT 
    d.full_name AS doctor_name,
    p.full_name AS patient_name
FROM appointments a
RIGHT JOIN doctors d
    ON a.doctor_id = d.doctor_id
LEFT JOIN patients p
    ON a.patient_id = p.patient_id;
--4)	Write a query using LEFT JOIN and WHERE IS NULL to find all patients who have NEVER had an appointment. Show patient full_name and city.

SELECT 
    p.full_name,
    p.city
FROM patients p
LEFT JOIN appointments a
    ON p.patient_id = a.patient_id
WHERE a.appt_date IS NULL;

--5)	Write a three-table INNER JOIN to show each appointment with: the patient name, the doctor name, and the medicine prescribed (from prescriptions). Show appointment_id, patient name, doctor name, and medicine_name.
SELECT 
    a.appointment_id,
    p.full_name AS patient_name,
    d.full_name AS doctor_name,
    pr.medicine_name
FROM appointments a
INNER JOIN patients p 
    ON a.patient_id = p.patient_id
INNER JOIN doctors d 
    ON a.doctor_id = d.doctor_id
INNER JOIN prescriptions pr 
    ON a.appointment_id = pr.appointment_id;

SELECT * FROM patients;
