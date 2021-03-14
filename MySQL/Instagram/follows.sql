/*CREATE TABLE follows
(
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id,followee_id)
);

INSERT INTO follows
(follower_id, followee_id)
VALUES
(1,2),(1,3),(3,1),(2,3);*/