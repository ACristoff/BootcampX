SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration ASC;

-- SELECT count(assistance_requests.*) as total_assistances, students.name
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;
