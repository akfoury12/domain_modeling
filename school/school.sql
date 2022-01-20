-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables

CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  bio TEXT
);


create table courses (
  id integer primary key autoincrement,
  name text,
  description text
);

create table sections (
  id integer primary key autoincrement,
  time text,
  course_id integer,
  teacher_id integer
);

create table enrollments (
id integer primary key autoincrement,
section_id integer,
student_id integer
);

