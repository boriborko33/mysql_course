/*SELECT first_name, title, grade
FROM students 
JOIN papers
ON students.id = papers.student_id
ORDER BY grade DESC;*/

/*SELECT first_name, title, grade
FROM students 
LEFT JOIN papers
ON students.id = papers.student_id;*/

/*SELECT 
first_name, 
IFNULL(title, 'MISSING'), 
IFNULL(grade, 0)
FROM students 
LEFT JOIN papers
ON students.id = papers.student_id;*/

/*SELECT 
first_name,  
IFNULL(AVG(grade), 0) AS avarage
FROM students 
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY first_name
ORDER BY grade DESC;*/

SELECT 
first_name,  
IFNULL(AVG(grade), 0) AS avarage,

CASE 
    WHEN AVG(grade) >= 75 THEN 'PASSING'
    ELSE 'FAILING'
END AS passing_status

FROM students 
LEFT JOIN papers
ON students.id = papers.student_id

GROUP BY first_name
ORDER BY grade DESC;