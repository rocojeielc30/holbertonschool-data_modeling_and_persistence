SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments
ON enrollments.course_id = courses.id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(*) AS enrollment_count
        FROM enrollments
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;