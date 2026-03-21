-- Task 1: Sides Menu Board
-- The owner wants to update the printed menu board that displays only the side dishes.
-- They need a list of every item in the 'Side' category along with its current price,
-- so the designer can produce an accurate board without having to check each item manually.
--
-- Hint: Write a query to find the name and price of all menu items that are in the 'Side' category.

SELECT "name",price FROM MenuItems
WHERE category ='Side';


-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task1_bonus.mongodb.js

--use("chrome-burger-db");
--db.getCollection("menu_items").find({category: 'Side' }).projection({name: 1,price: 1, _id: 0})

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- อันดับแรก ผมจะไปดูโครงสร้างของข้อมูงว่าหน้าตาเป็นยังไง พอดูแล้วจะได้รู้ว่า จะดึงอะไรมาใช้ยังไง
-- ส่วนข้อมูลที่ต้องการ อ่านตรง Hint ต้องใช้ name กับ price ด้วยเงื่อนไข ต้องมี Side ใน category 
-- อ่านดูแล้ว ตีความได้ว่า table น่าจะชื่อ menu items 
-- จากสิ่งที่เรียนไป จำได้ว่า มีใช้ SELECT กับ WHERE คิดดูแล้วน่าจะเอา 2 อันนี้มาใช้ด้วยกันได้

