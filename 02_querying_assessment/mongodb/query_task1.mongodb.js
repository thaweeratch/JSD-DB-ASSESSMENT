use("chrome-burger-db");
// Task 1: Budget Meal Deal
// The owner wants to introduce a budget-friendly meal deal promotion and needs to identify
// which menu items could be included. To qualify, an item must be priced under $10.00,
// so they can offer good value without cutting too deep into margins.
db.menu_items.find({ price: { $lt: 10.0 } });
// Hint: Write a query to find all menu items in the menu_items collection that have a price less than 10.00.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task1_bonus.sql
//SELECT * FROM menu_items
//WHERE price < 10.00;
// ---------------------------------------------------------------
// Your thinking process (required)

// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
//ข้อมูลอะไรที่ต้องการหา >>> menu_items
//ต้องใช้คำสั่งอะไร >>> Collection อะไร >>> .find() เพื่อหาข้อมูลทั้งหมด แล้วก็ใช้ price ราคา
//ใช้คำสั่ง $lt เพื่อหาราคาที่เมนูต่ำกว่า 10.00
