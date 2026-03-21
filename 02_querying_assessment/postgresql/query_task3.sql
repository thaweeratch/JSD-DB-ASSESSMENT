-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

select concat(staff.first_name,' ',staff.last_name) fullname,count(*) total_order_count from staff 
        LEFT JOIN orders ON staff.staff_id = orders.staff_id 
        
        GROUP BY staff.staff_id
        ORDER BY total_order_count DESC



-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js
--use("chrome-burger-db");
--db.orders.aggregate( [
--   {
 --    $lookup:
 --      {
 --        from: "orders",
 --        localField: "_id",
 --        foreignField: "staff_id",
 --        as: "orders"
 --      }
 -- }
--] )
-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- อ่านโจทย์ข้อนี้โคตรยากเลย แต่คุ้นๆนะ ว่ามันอาจจะเป็น การ Join หรือเปล่า แล้วยังต้องแสดงแบบ รายบบุคคล 
-- ซึ่งคิดว่าน่าจะต้องใช้ group by ด้วย อันนี้เป็นส่วนที่ผมไม่ค่อยแม่นซักเท่าไหร่ อาจจะต้องลอง เขียนคิวรี่เทสดูอีกที
-- data โจทย์ต้องการเป็น fullname แต่ใน table มันแยกเป็น first name กับ last name เลยคิดว่าต้องทำการ merge field 
-- เพื่อให้ได้ fullname และก็ total order count น่าจะต้องใช้ count * ชื่อ table น่าจะเกี่ยวกับ staff member
-- ส่วนการเรียงลำดับ ก็ใช้ order count เรียงด้วย desc