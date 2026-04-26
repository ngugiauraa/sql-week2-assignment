-- ============================================
-- Section C: Date & Time Functions
-- Name: Jesse Ngugi 
-- Date: 26/04/2026
-- ============================================

--Q1: Write a query to extract the birth year, birth month, and birth day from each student's date_of_birth as three separate columns. Show first_name alongside them.
SELECT 
    first_name,
    EXTRACT(YEAR FROM date_of_birth)::TEXT AS birth_year,        -- Used AI to remove comma
    EXTRACT(MONTH FROM date_of_birth) AS birth_month,
    EXTRACT(DAY FROM date_of_birth) AS birth_day
FROM students;

--Q2: Write a query to show each student's full name, their date_of_birth, and their age in complete years. Order from oldest to youngest.
select 
    CONCAT(first_name,' ',last_name) as full_name,
    date_of_birth,
    EXTRACT(YEAR FROM AGE(date_of_birth)) AS age
from students
order by age desc;

--Q3: Write a query to display each exam date in this exact format: 'Friday, 15th March 2024'.. Call the column formatted_date.
SELECT 
    TO_CHAR(exam_date,'Day,DDth Month YYYY') AS formatted_date
FROM exam_results;