WITH QuartileAssignment AS (
    SELECT student_id,student_name,marks_achieved,
        NTILE(4) OVER (ORDER BY marks_achieved) AS quartile
    FROM students)
SELECT student_id,student_name,marks_achieved,quartile
FROM QuartileAssignment
ORDER BY quartile, marks_achieved DESC;