-- ============================================
-- Section D: SQL JOINS
-- Name: Jesse Ngugi 
-- Date: 26/04/2026
-- ============================================

--Q1: Write an INNER JOIN query to show each appointment alongside the patient's full name, the doctor's full name, the appointment date, and the diagnosis.
SELECT 
    a.appointment_id,
    p.full_name as patient,
    d.full_name as doctor,
    a.appt_date,
    a.diagnosis
FROM appointments a
INNER JOIN patients p ON a.patient_id = p.patient_id
INNER JOIN doctors d ON a.doctor_id = d.doctor_id;

--Q2: Write a LEFT JOIN query to show ALL patients - and if they have an appointment, show the appointment date and diagnosis. Patients with no appointments should still appear with NULL values
SELECT
    p.full_name as patient,
    a.appt_date,
    a.diagnosis
from patients p
left join appointments a on p.patient_id = a.patient_id;

--Q3: Write a RIGHT JOIN query to show ALL doctors - and if they have seen a patient, show the patient name. Doctors with no appointments should still appear.
SELECT 
    d.full_name as doctor,
    p.full_name as patient,
    a.appointment_id
from appointments a
right join doctors d on a.doctor_id = d.doctor_id 
right join patients p on a.patient_id =p.patient_id;

--Q4: Write a query using LEFT JOIN and WHERE IS NULL to find all patients who have NEVER had an appointment. Show patient full_name and city.
select 
    a.appointment_id,
    p.full_name as patient,
    p.city,
    a.appt_date as appointment_date
from appointments a
left join patients p on a.patient_id =p.patient_id;

--Q5: Write a three-table INNER JOIN to show each appointment with: the patient name, the doctor name, and the medicine prescribed (from prescriptions). Show appointment_id, patient name, doctor name, and medicine_name.
SELECT
    a.appointment_id,
    p.full_name as patient_name,
    d.full_name as doctors_name,
    s.medicine_name as medicine
from appointments a
inner join patients p on a.patient_id =p.patient_id
inner join doctors d on a.doctor_id =d.doctor_id 
inner join prescriptions s on a.appointment_id =s.appointment_id;