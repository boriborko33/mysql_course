SELECT first_name, last_name, rating
FROM reviews
INNER JOIN reviewers
    ON reviewers.id = reviews.reviewer_id
LIMIT 20
;