SELECT courses.title AS course_title        -- show each course's title, labelled course_title
FROM courses                                -- start from the courses table
INNER JOIN enrollments                      -- join enrollments, keeping only courses that have a match
ON enrollments.course_id = courses.id       -- match each enrollment to its course
GROUP BY courses.id                         -- one group per course, holding all its enrollment rows
HAVING COUNT(*) > (                         -- keep courses whose row count is above the subquery's value
    SELECT AVG(enrollment_count)            -- average the per-course counts into one number
    FROM (                                  -- treat the next query's result as a temporary table
        SELECT COUNT(*) AS enrollment_count -- count the rows in each group, labelled enrollment_count
        FROM enrollments                    -- read only the enrollments table
        GROUP BY course_id                  -- one group per course that has enrollments
    )                                       -- end of the temporary table (one count per course)
)                                           -- end of the average subquery (one single number)
ORDER BY course_title ASC;                  -- sort the final titles alphabetically