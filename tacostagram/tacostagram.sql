
CREATE TABLE POSTS (
  Post_id INTEGER PRIMARY KEY AUTOINCREMENT,
  User_id integer,
  time time,
  date date,
  text text,
  image text
);

create table likes (
user_id integer,
post_id integer
);

create table comments (
    comment_id integer primary key autoincrement,
    user_id integer,
    post_id integer,
    comment TEXT
);

create table users (
    user_id integer primary key autoincrement,
    user_name text,
    first_name text,
    last_name text,
    email text,
    address text
);

create table followers (
    relationship_id integer primary key autoincrement,
    followed_id integer,
    follower_id integer
);