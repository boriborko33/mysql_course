-- 3 tables together 

SELECT 
title, 
rating,
CONCAT(first_name, ' ',last_name) AS reviewer
FROM reviewers
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series 
    ON series.id = reviews.series_id
ORDER BY title
LIMIT 15 
;