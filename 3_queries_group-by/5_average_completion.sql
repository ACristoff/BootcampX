-- SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
-- FROM cohorts
-- JOIN students ON cohorts.id = cohort_id
-- GROUP BY cohort_name 
-- HAVING count(students.*) >= 18
-- ORDER BY student_count;

-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'FEB12';


-- SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_submissions DESC;



-- Get currently enrolled students' average assignment completion time.

--     Select the students name and average time from assignment submissions.
--     Order the results from greatest duration to least greatest duration.
--     A student will have a null end_date if they are currently enrolled

SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
