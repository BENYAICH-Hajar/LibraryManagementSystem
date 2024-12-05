SELECT s.name AS student_name, 
       c.course_name, 
       c.credits
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

SELECT s.name AS student_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;



SELECT c.course_name, 
       c.capacity, 
       COUNT(e.student_id) AS number_of_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name, c.capacity;


SELECT c.course_name, 
       c.capacity, 
       COUNT(e.student_id) AS number_of_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name, c.capacity
HAVING COUNT(e.student_id) > c.capacity / 2;


SELECT s.student_id, s.name, COUNT(e.course_id) AS course_count
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id
HAVING course_count = (
    SELECT MAX(course_count)
    FROM (
        SELECT COUNT(course_id) AS course_count
        FROM Enrollments
        GROUP BY student_id
    ) AS subquery
);


SELECT s.student_id, s.name, SUM(c.credits) AS total_credits
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.student_id;


SELECT c.course_id, c.course_name
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
WHERE e.student_id IS NULL;



# question 7

DELETE FROM Enrollments
WHERE course_id = [ID_DU_COURS];

DELETE FROM Enrollments
WHERE course_id = 3;

