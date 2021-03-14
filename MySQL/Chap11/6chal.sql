/*
SELECT first_name, 
       last_name, 
       Count(rating)                               AS COUNT, 
       Ifnull(Min(rating), 0)                      AS MIN, 
       Ifnull(Max(rating), 0)                      AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2)            AS AVG, 
       IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 
*/

SELECT 
first_name,
last_name,
COUNT(rating) AS "COUNT",
IFNULL(MIN(rating),0) AS "MIN",
IFNULL(MAX(rating),0) AS "MAX",
ROUND(IFNULL(AVG(rating),0),2) AS "AVG",

CASE
    WHEN COUNT(rating) >= 10 THEN "POWER USER"
    WHEN COUNT(rating) > 0 THEN "ACTIVE"
    ELSE "INACTIVE"
END AS "STATUS"

FROM reviewers
LEFT JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id
;