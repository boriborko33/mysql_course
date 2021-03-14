/*CREATE TABLE likes
(
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id) -- Because of this primary key with the user_id and the photo_id we cannot insert duplicated likes into the table
);

INSERT INTO likes
(user_id, photo_id)
VALUES (1,2),(3,1),(1,3),(2,3);*/


