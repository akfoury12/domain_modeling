-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES


CREATE TABLE contacts (
  contact_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_id integer
);

CREATE TABLE associates (
  associate_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  title TEXT
);

CREATE TABLE companies (
  company_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  industry text
);

CREATE TABLE activity (
  activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id integer,
  contact_id integer,
  associate_id integer,
  log text,
  date date,
  time time
);

-- select companies.industry, activity.associate_id 
  --  from activity inner join on activity.company_id = companies.company_id
    -- group by company_id