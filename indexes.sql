
CREATE INDEX idx_students_enrollment_date
ON students(enrollment_date);

CREATE INDEX idx_enrollments_course_id
ON enrollments(course_id);

CREATE INDEX idx_students_department_id
ON students(department_id);

ANALYZE students;
ANALYZE enrollments;
