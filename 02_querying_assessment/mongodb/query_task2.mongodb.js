use("chrome-burger-db");
// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.
//
// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.
db.orders.find({ staff_name: "Jane Doe", order_date: 1, total_price: 1 });
// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql
//SELECT order_date, total_price
//FROM orders
//WHERE staff_name = 'Jane Doe';
// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
//โจทย์ต้องการให้ดึง order history ของ Jane Doe สำหรับ performance review  โดยดึงข้อมูล จาก order_date กับ total_price ตามที่ manager ต้องการ
//ระบุพนักงาน >>> (staff_name:"Jane Doe")
