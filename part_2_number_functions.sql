-- ============================================
-- Section B: Number Functions
-- Name: Jesse Ngugi 
-- Date: 26/04/2026
-- ============================================

--Q1: Write a query to show each exam result alongside the mark rounded to 1 decimal place, the mark rounded UP to the nearest 10 using CEIL, and the mark rounded DOWN using FLOOR.
SELECT 
    marks,
    ROUND(marks, 1) AS rounded_up_to_1_decimal,
    CEIL(marks / 10.0) * 10 AS rounded_up_to_nearest_10,
    FLOOR(marks / 10.0) * 10 AS rounded_down_to_nearest_10
FROM exam_results;

--Q2: Write a query to calculate the following summary statistics for exam_results in one query: total number of results (COUNT), average mark (AVG rounded to 2 decimal places), highest mark (MAX), lowest mark (MIN), and total marks added together (SUM).
select
    COUNT(result_id) as total_number_of_results,
    ROUND(AVG(marks), 2) as average_marks,
    MAX(marks) as highest_mark,
    MIN(marks) as lowest_mark,
    SUM(marks) as total_marks
from exam_results;

--Q3: The school wants to apply a 10% bonus to all marks. Write a query to show each result_id, the original marks, and the new boosted_mark rounded to the nearest whole number.
SELECT 
    result_id,
    marks AS original_mark,
    ROUND(marks * 1.10) AS boosted_mark
FROM exam_results;
    