
INSERT INTO departments (department_name)
SELECT 'Department ' || i
FROM generate_series(1, 8) AS i;

INSERT INTO courses (course_name, department_id)
SELECT
    'Course ' || i,
    ((i - 1) % 8) + 1
FROM generate_series(1, 120) AS i;

INSERT INTO students (first_name, last_name, email, department_id, enrollment_date)
SELECT
    'First' || i,
    'Last' || i,
    'student' || i || '@university.edu',
    ((i - 1) % 8) + 1,
    DATE '2020-01-01' + ((i - 1) % 2000)
FROM generate_series(1, 50000) AS i;

INSERT INTO enrollments (student_id, course_id, enrollment_date, grade)
SELECT
    ((i - 1) % 50000) + 1,
    ((i - 1) % 120) + 1,
    DATE '2020-01-01' + ((i - 1) % 2000),
    CASE
        WHEN i % 4 = 0 THEN 'A'
        WHEN i % 4 = 1 THEN 'B'
        WHEN i % 4 = 2 THEN 'C'
        ELSE 'D'
    END
FROM generate_series(1, 300000) AS i;
