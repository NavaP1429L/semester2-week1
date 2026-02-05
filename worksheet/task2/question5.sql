-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
SELECT
    s.StudentId,
    s.FirstName,
    s.LastName,
    SUM(c.Credits) AS TotalCreditsPassed
FROM Students s
JOIN Enrolments e
    ON s.StudentId = e.StudentId
JOIN Courses c
    ON e.CourseId = c.CourseId
WHERE e.Grade >= 40
GROUP BY
    s.StudentId,
    s.FirstName,
    s.LastName;
