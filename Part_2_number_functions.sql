-- ============================================
-- Section 2: Number Functions
-- Name: Melody Mulei
-- Date: 17-04-2026
-- ============================================
--1)	Write a query to show each exam result alongside the mark rounded to 1 decimal place, the mark rounded UP to the nearest 10 using CEIL, and the mark rounded DOWN using FLOOR.
SELECT 
    result_id,
    student_id,
    marks,
    ROUND(marks, 1) AS rounded_1dp,
    CEIL(marks / 10.0) * 10 AS rounded_up_10,
    FLOOR(marks / 10.0) * 10 AS rounded_down_10
FROM exam_results;

--2)	Write a query to calculate the following summary statistics for exam_results in one query: total number of results (COUNT), average mark (AVG rounded to 2 decimal places), highest mark (MAX), lowest mark (MIN), and total marks added together (SUM).
select
count(*) as total_results,
round(avg(marks),2) as average_mark,
max(marks) as highest_marks,
min(marks) as lowest_marks,
sum(marks) as total_marks
from exam_results;

--3)	The school wants to apply a 10% bonus to all marks. Write a query to show each result_id, the original marks, and the new boosted_mark rounded to the nearest whole number.
select 
result_id,
marks,
round(marks*1.10) as boosted_mark
from exam_results;
