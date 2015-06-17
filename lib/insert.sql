-- your code here
-- 10 projects, 20 users, and 30 pledges into the database.

-- CREATE TABLE projects(
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   title TEXT,
--   category TEXT,
--   funding_goal INTEGER,
--   start_date TEXT,
--   end_date TEXT
-- );
-- CREATE TABLE users(
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   name TEXT,
--   age INTEGER
-- );
-- CREATE TABLE pledges(
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   amount INTEGER,
--   user_id INTEGER,
--   project_id INTEGER
-- );


INSERT INTO projects (title, category, funding_goal, start_date, end_date)
VALUES ('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16'),
('Shelter', 'Volunteer', 200, '01/01/16', '06/01/16');

INSERT INTO users (name, age)
VALUES ('Bob', 20),
('Bob', 20),
('Bob', 20),
('Bob', 30),
('Dan', 22),
('Bob', 25),
('Bob', 20),
('Enrique', 20),
('Bob', 20),
('Bob', 20),
('Susan', 20),
('Bob', 20),
('Hellen', 20),
('Bob', 20),
('Bob', 20),
('Jim', 20),
('Bob', 20),
('Bob', 20),
('Bob', 20),
('Ann', 20);

INSERT INTO pledges (amount, user_id, project_id)
VALUES
(300, 2, 5), (300, 2, 5), (100, 2, 5), (300, 9, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5),
  (300, 2, 5), (360, 2, 2), (307, 2, 3), (309, 12, 4), (23, 2, 4), (10, 2, 4), (300, 2, 4), (300, 2, 5), (300, 2, 5), (300, 2, 5), (300, 2, 5);

SELECT sum(amount) AS project_amount FROM pledges GROUP BY project_id;
