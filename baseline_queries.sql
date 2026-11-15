EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM students
WHERE enrollment_date = '2023-05-15';

EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM enrollments
WHERE course_id = 42;

EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM students
WHERE department_id = 3;
