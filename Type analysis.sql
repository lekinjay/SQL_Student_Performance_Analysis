-- PROJECT: Student Performance Analysis
-- AUTHOR: Mubarak (UNIOSUN Mechanical Engineering)

-- TASK 1: Impact of Study Hours & Extracurriculars
-- Analyzes students studying > 10 hours who also participate in clubs.
SELECT 
    hours_studied, 
    ROUND(AVG(exam_score)::numeric, 2) AS avg_exam_score
FROM student_performance
WHERE hours_studied > 10 
  AND extracurricular_activities = 'Yes'
GROUP BY hours_studied
ORDER BY hours_studied DESC;

-- TASK 2: Finding the "Sweet Spot"
-- Categorizing students into ranges to see which study volume is most effective.
SELECT 
    CASE 
        WHEN hours_studied <= 5 THEN '1-5 hours'
        WHEN hours_studied <= 10 THEN '6-10 hours'
        WHEN hours_studied <= 15 THEN '11-15 hours'
        ELSE '16+ hours' 
    END AS hours_studied_range,
    ROUND(AVG(exam_score)::numeric, 2) AS avg_exam_score
FROM student_performance
GROUP BY hours_studied_range
ORDER BY avg_exam_score DESC;

-- TASK 3: Anonymous Student Ranking
-- Using DENSE_RANK() to show relative class standing without exposing scores.
SELECT 
    attendance, 
    hours_studied, 
    sleep_hours, 
    tutoring_sessions,
    DENSE_RANK() OVER(ORDER BY exam_score DESC) AS exam_rank
FROM student_performance
ORDER BY exam_rank ASC
LIMIT 30;
