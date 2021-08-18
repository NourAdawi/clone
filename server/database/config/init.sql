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
    follow_id INTEGER NOT NULL,
    following_id INTEGER NOT NULL
);

COMMIT;
