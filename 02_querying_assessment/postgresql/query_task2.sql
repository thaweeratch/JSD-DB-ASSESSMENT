-- Task 2: Kitchen Staff Contact List
-- The manager has a last-minute change to the kitchen prep schedule and needs to notify
-- all cooks as soon as possible. They need the full names of every staff member
-- whose role is 'Cook' so they can be contacted directly.
SELECT first_name, last_name FROM staff
WHERE "role"= 'Cook';

-- Hint: Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task2_bonus.mongodb.js
--use("chrome-burger-db");
--db.getCollection("staff").find({role: 'Cook' }).projection({ first_name: 1, last_name: 1, _id: 0})


---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
--อ่านจากโจทย์ รู้สึกคล้ายๆ Task 1 คิดว่าจะน่าจะใช้วิธีเดียวกันกับ Task 1
--first_name กับ last_name คิดว่าคือ field ส่วน staff members คือ table และ role คือ condition ในการ where
---- Mock Data for Staff


