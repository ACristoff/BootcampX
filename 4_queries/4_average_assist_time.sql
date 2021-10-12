SELECT AVG(completed_at - started_at) AS average_assistance_request_duration
FROM assistance_requests;

-- SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE end_date IS NULL
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;

-- SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN assignments ON assignments.id = assignment_id
-- ORDER BY duration ASC;