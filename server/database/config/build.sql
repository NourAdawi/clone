BEGIN;

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS posts CASCADE;
DROP TABLE IF EXISTS user_follow CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    user_name VARCHAR(25) NOT NULL,
    name VARCHAR(25) NOT NULL,
    profile_img text
);


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL, 
    text_content TEXT,
    image text,
    time date
);


CREATE TABLE user_follow(
    follower_id INTEGER NOT NULL,
    following_id INTEGER NOT NULL
);


INSERT INTO users(user_name, name) VALUES 
('nourzada', 'Nour Adawi'),
('EmanWamda', 'Eman Amassi'),
('moon', 'AbeerAydi');


INSERT INTO user_follow (follower_id, following_id) VALUES
(1,2),
(1,3),
(2,1),
(2,3),
(3,1),
(3,2);


Insert Into posts (user_id, text_content) VALUES
(2,'هذا العالم عجيب إلى أبعد حد #بقلمي'),
(1, 'ثمة مساحة بين الحافز والرد، في تلك المساحة تكمن قوتنا في اختيار ردنا، وفي ردنا يكمن نمونا وحريتنا'),
(3, 'البدر هذه الليلة يشبهني');


COMMIT;
