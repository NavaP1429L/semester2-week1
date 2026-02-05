-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
SELECT
    s.StudentId,
    s.FirstName,
    s.LastName,
    c.CourseName
FROM Students s
JOIN Enrolments e
    ON s.StudentId = e.StudentId
JOIN Courses c
    ON e.CourseId = c.CourseId;
