use("chrome-burger-db");
// Task 3: Stock Replenishment Check
// Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
// that are already well-stocked. They need a list of every ingredient with a stock level
// of 100 or more so those can be deprioritised in this week's order.
//
// Hint: Write a query to find all ingredients in the ingredients collection that have a stock_level of 100.00 or more.
db.ingredients.find({ stock_level: { $gte: 100 } });
// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task3_bonus.sql
//SELECT * FROM ingredients
//WHERE stock_level >= 100;

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
//Manager ต้องการหาวัตถุดิบที่ยังมี stock ตั้งแต่ 100 ชิ้นขึ้นไป เราจะใช้ collection คือ ingredients แล้วใช้คำสั่ง .find()
//และใช้ $gte (Greater Than or Equal) กับ stock_level
