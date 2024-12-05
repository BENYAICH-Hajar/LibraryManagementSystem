INSERT INTO Students (student_id, name, age, gender)
 VALUES(1, 'hajar', 23, 'female'),
(2, 'ferdaouss', 24, 'female'),
(3, 'jihad', 28, 'female'),
(4, 'hanane', 35, 'female'),
(5, 'ahmed', 16, 'male');
INSERT INTO Courses (course_id, course_name, credits, capacity)
VALUES(11, 'math', 4 , 10),  
(12, 'history', 1 , 9),       
(13, 'phys', 3, 7), 
(14, 'anglais', 2, 6);      
INSERT INTO Enrollments (student_id, course_id)
VALUES(1, 12),  
(1, 11),  
(2, 14),  
(2, 13),  
(3, 12),  
(3, 14),  
(4, 12),  
(5, 11); 