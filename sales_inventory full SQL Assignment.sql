-- CREATE schema assignment
CREATE SCHEMA assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);

-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);

-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select * from customers;

-- 2. Write a query to select the total number of products from the `Products` table.
select count(*) from products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price 
from products;

-- 4. Write a query to find the average price of all products from the `Products` table.
select 
    AVG(price) as average_price
from products;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.
select 
    SUM(total_amount) as total_sales_amount
from sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
SELECT DISTINCT membership_status 
FROM customers
ORDER BY membership_status;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select 
    concat(first_name,' ',last_name) as full_name
from customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select product_name, category
from products
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select 
    MAX(price) as highest_price
from products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
SELECT 
    product_id,
    sum(quantity_sold) AS number_of_sales
FROM Sales
GROUP BY product_id
ORDER BY product_id ASC;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
SELECT 
    product_id,
    SUM(quantity_sold) AS total_quantity_sold
FROM Sales
GROUP BY product_id
ORDER BY PRODUCT_ID ASC;


-- 12. Write a query to find the lowest price of products in the `Products` table.
select 
    MIN(price) as lowest_price
from products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
SELECT DISTINCT 
    c.customer_id,
    concat(c.first_name,' ',c.last_name) as full_name
FROM Customers c
INNER JOIN Sales s ON c.customer_id = s.customer_id
INNER JOIN Products p ON s.product_id = p.product_id
WHERE p.price > 1000
ORDER BY full_name;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product
SELECT 
    p.product_name,
    SUM(s.quantity_sold * p.price) AS total_sales_amount
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales_amount DESC;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select 
    concat(c.first_name,' ',c.last_name) as full_name,
    s.total_amount
from customers c
join sales s on c.customer_id =s.customer_id;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
SELECT 
    c.first_name,
    c.last_name,
    p.product_name,
    s.quantity_sold
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id
ORDER BY c.first_name, c.last_name, p.product_name;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
SELECT 
    c1.customer_id AS customer1_id,
    CONCAT(c1.first_name, ' ', c1.last_name) AS customer1_name,
    c2.customer_id AS customer2_id,
    CONCAT(c2.first_name, ' ', c2.last_name) AS customer2_name,
    c1.membership_status
FROM Customers c1
JOIN Customers c2 
    ON c1.membership_status = c2.membership_status
   AND c1.customer_id < c2.customer_id
ORDER BY c1.membership_status, customer1_name, customer2_name;
--used AI


-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
SELECT 
    p.product_id,
    p.product_name,
    SUM(quantity_sold) AS total_number_of_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY product_id ASC;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select product_id, product_name
from products 
where stock_quantity < 10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.
SELECT 
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > 5
ORDER BY total_quantity_sold DESC;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.category
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id
WHERE p.category IN ('Electronics', 'Appliances')
ORDER BY customer_id;

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
SELECT 
    p.product_name,
    SUM(s.quantity_sold * p.price) AS total_sales_amount
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales_amount DESC;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
ORDER BY customer_id;

-- 24. Write a query to find the customers with the highest total sales in 2023.
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(s.quantity_sold * p.price) AS total_sales_2023
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY customer_id asc;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
SELECT 
    p.product_id,
    p.product_name,
    p.price AS product_price
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
ORDER BY p.price desc
LIMIT 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
SELECT 
    COUNT(DISTINCT c.customer_id) AS total_customers
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id
WHERE p.price > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
SELECT 
    COUNT(*) AS total_gold_sales
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    i.stock_quantity
FROM Products p
JOIN Inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < 10
ORDER BY i.stock_quantity ASC;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(*) AS number_of_products_purchased,
    SUM(s.quantity_sold) AS total_quantity_bought
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(*) > 5
ORDER BY total_quantity_bought DESC;

-- 30. Write a query to find the average quantity sold per product.
select 
    p.product_id, 
    p.product_name,
    AVG(s.quantity_sold) as average_quantity_sold
from products p
join sales s on p.product_id =s.product_id
group by p.product_id
order by product_id asc;

-- 31. Write a query to find the number of sales made in the month of December 2023.
SELECT COUNT(*) AS sales_count
FROM sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023 
  AND EXTRACT(MONTH FROM sale_date) = 12;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM sales
WHERE sale_date >= '2023-01-01' AND sale_date <= '2023-12-31'
GROUP BY customer_id
ORDER BY customer_id ASC;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select product_id, product_name, stock_quantity
from products 
WHERE stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
SELECT 
    product_id, 
    SUM(total_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
SELECT DISTINCT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name,
    c.registration_date, 
    s.sale_date
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_date >= c.registration_date 
  AND s.sale_date <= c.registration_date + INTERVAL '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
SELECT 
    s.sale_id,
    p.product_name,
    p.price,
    s.sale_date
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
SELECT 
    customer_id, 
    SUM(quantity_sold) AS purchase_count
FROM Sales
GROUP BY customer_id
ORDER BY purchase_count DESC
LIMIT 1;

-- 38. Write a query to find the total quantity of products sold per customer.
SELECT 
    customer_id, 
    SUM(quantity_sold) AS total_quantity_sold
FROM Sales
GROUP BY customer_id
ORDER BY customer_id ASC;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
(SELECT product_name, Stock_quantity, 'Highest Stock' AS status
 FROM Products
 ORDER BY stock_quantity DESC
 LIMIT 1)
UNION ALL
(SELECT product_name, stock_quantity, 'Lowest Stock' AS status
 FROM Products
 ORDER BY stock_quantity ASC
 LIMIT 1);

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
SELECT 
    p.product_name, 
    SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
WHERE p.product_name LIKE '%Phone%'
GROUP BY p.product_name
ORDER BY total_sales DESC;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
SELECT 
    p.product_name, 
    SUM(s.total_amount) AS total_sales_amount
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold'
GROUP BY p.product_name
ORDER BY total_sales_amount DESC;

-- 42. Write a query to find the total sales of products by category.
SELECT 
    p.category, 
    SUM(s.total_amount) AS total_category_sales
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY total_category_sales DESC;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
SELECT 
    p.product_name,
    EXTRACT(YEAR FROM s.sale_date)::TEXT AS sale_year,
    EXTRACT(MONTH FROM s.sale_date) AS sale_month,
    SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY 
    p.product_name, 
    sale_year, 
    sale_month
ORDER BY 
    sale_year DESC, 
    sale_month DESC, 
    total_sales DESC;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
SELECT DISTINCT 
    i.product_id, 
    i.stock_quantity,
    S.quantity_sold 
FROM Inventory i
JOIN Sales s ON i.product_id = s.product_id
WHERE i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
SELECT 
    customer_id, 
    SUM(total_amount) AS total_spent
FROM Sales
GROUP BY customer_id
ORDER BY customer_id ASC
LIMIT 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
SELECT COUNT(DISTINCT product_id) AS unique_products_2023
FROM Sales
WHERE sale_date >= '2023-01-01' AND sale_date <= '2023-12-31';

-- 47. Write a query to find the products that have not been sold in the last 6 months.
SELECT product_id, product_name
FROM Products
WHERE product_id NOT IN (
    SELECT product_id 
    FROM Sales 
    WHERE sale_date <= CURRENT_DATE - INTERVAL '6 months'
);

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
SELECT 
    p.product_name, 
    p.price, 
    SUM(s.quantity_sold ) AS total_quantity_sold
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
WHERE p.price BETWEEN 200 AND 800
GROUP BY p.product_name, p.price
ORDER BY total_quantity_sold DESC;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
SELECT 
    customer_id, 
    SUM(total_amount) AS total_spent_2023
FROM Sales
WHERE sale_date >= '2023-01-01' AND sale_date <= '2023-12-31'
GROUP BY customer_id
ORDER BY customer_id ASC;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
SELECT 
    p.product_id, 
    p.product_name, 
    p.price, 
    SUM(s.quantity_sold ) AS total_units_sold
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
WHERE p.price > 200
GROUP BY p.product_id, p.product_name, p.price
HAVING SUM(s.quantity_sold ) > 100;

-- SUBQUERY QUESTIONS
set search_path to assignment;

-- 51. Which customers have spent more than the average spending of all customers?
SELECT 
    customer_id,
    SUM(total_amount) AS customer_total
FROM Sales
GROUP BY customer_id
HAVING SUM(total_amount) > (
    SELECT AVG(total_spent) 
    FROM (
        SELECT SUM(total_amount) AS total_spent 
        FROM Sales 
        GROUP BY customer_id
    ) AS average_table
);

-- 52. Which products are priced higher than the average price of all products?
SELECT 
    product_name, 
    price
FROM Products
WHERE price > (SELECT AVG(price) FROM Products)
ORDER BY price DESC;

-- 53. Which customers have never made a purchase?
SELECT customer_id, CONCAT(first_name,' ',last_name)
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Sales);

-- 54. Which products have never been sold?
select product_id, product_name
from products 
where product_id not in (select product_id from sales);

-- 55. Which customer made the single most expensive purchase (total amount)?
SELECT 
    CONCAT(c.first_name,' ',c.last_name), 
    s.sale_id, 
    s.total_amount
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
ORDER BY s.total_amount DESC
LIMIT 1;

-- 56. Which products have total sales greater than the average total sales across all products?
WITH ProductSales AS (
    SELECT 
        product_id, 
        SUM(total_amount) AS total_revenue
    FROM Sales
    GROUP BY product_id
)
SELECT 
    p.product_name, 
    ps.total_revenue
FROM Products p
JOIN ProductSales ps ON p.product_id = ps.product_id
WHERE ps.total_revenue > (SELECT AVG(total_revenue) FROM ProductSales)
ORDER BY ps.total_revenue DESC;
--used AI

-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers
SELECT 
    customer_id, 
    CONCAT(first_name,' ',last_name) as full_name, 
    registration_date
FROM customers
WHERE registration_date < (
    SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE 
    FROM assignment.customers
)
ORDER BY customer_id ASC;

-- 58. Which products have a price higher than the average price within their own category?
SELECT 
    p.product_name, 
    p.category, 
    p.price
FROM Products p
WHERE p.price > (
    SELECT AVG(p2.price) 
    FROM Products p2 
    WHERE p.category = p2.category
)
ORDER BY price ASC;

-- 59. Which customers have spent more than the customer with ID = 10?
SELECT 
    customer_id, 
    SUM(total_amount) AS total_spent
FROM Sales
GROUP BY customer_id
HAVING SUM(total_amount) > (
    SELECT SUM(total_amount) 
    FROM Sales 
    WHERE customer_id = 10
)
ORDER BY customer_id ASC;

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
WITH ProductTotals AS (
    SELECT 
        product_id, 
        SUM(quantity_sold ) AS total_qty
    FROM Sales
    GROUP BY product_id
)
SELECT 
    p.product_name, 
    pt.total_qty
FROM Products p
JOIN ProductTotals pt ON p.product_id = pt.product_id
WHERE pt.total_qty > (SELECT AVG(total_qty) FROM ProductTotals)
ORDER BY pt.total_qty DESC;

-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
WITH CustomerSpending AS (
    SELECT 
        customer_id, 
        SUM(total_amount) AS total_spent
    FROM Sales
    GROUP BY customer_id
)
SELECT 
    cs.customer_id, 
    CONCAT(c.first_name,' ',c.last_name), 
    cs.total_spent
FROM CustomerSpending cs
JOIN Customers c ON cs.customer_id = c.customer_id
ORDER BY customer_id ASC
LIMIT 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
WITH ProductVolume AS (
    SELECT 
        product_id, 
        SUM(quantity_sold) AS total_units_sold
    FROM Sales
    GROUP BY product_id
)
SELECT 
    p.product_name, 
    pv.total_units_sold
FROM Products p
JOIN ProductVolume pv ON p.product_id = pv.product_id
ORDER BY pv.total_units_sold DESC
LIMIT 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
WITH CategoryRevenue AS (
    -- Intermediate result: Total sales per category
    SELECT 
        p.category, 
        SUM(s.total_amount) AS total_revenue
    FROM Products p
    JOIN Sales s ON p.product_id = s.product_id
    GROUP BY p.category
)
-- Final selection: The category with the highest revenue
SELECT 
    category, 
    total_revenue
FROM CategoryRevenue
ORDER BY total_revenue DESC
LIMIT 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
WITH CustomerPurchaseCounts AS (
    -- Intermediate result: Counting orders per customer
    SELECT 
        customer_id, 
        COUNT(sale_id) AS total_purchases
    FROM Sales
    GROUP BY customer_id
)
-- Final selection: Customers with more than 2 purchases
SELECT 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    cpc.total_purchases
FROM Customers c
JOIN CustomerPurchaseCounts cpc ON c.customer_id = cpc.customer_id
WHERE cpc.total_purchases > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
WITH ProductQuantities AS (
    -- Intermediate result: Total quantity sold per product
    SELECT 
        product_id, 
        SUM(quantity_sold ) AS total_sold
    FROM Sales
    GROUP BY product_id
)
-- Final selection: Products above the average quantity
SELECT 
    p.product_name, 
    pq.total_sold
FROM Products p
JOIN ProductQuantities pq ON p.product_id = pq.product_id
WHERE pq.total_sold > (SELECT AVG(total_sold) FROM ProductQuantities)
ORDER BY pq.total_sold DESC;

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
WITH CustomerSpending AS (
    -- Intermediate result: Total spending per customer
    SELECT 
        customer_id, 
        SUM(total_amount) AS total_spent
    FROM Sales
    GROUP BY customer_id
)
-- Final selection: Customers above the average spending
SELECT 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    cs.total_spent
FROM Customers c
JOIN CustomerSpending cs ON c.customer_id = cs.customer_id
WHERE cs.total_spent > (SELECT AVG(total_spent) FROM CustomerSpending)
ORDER BY cs.total_spent DESC;

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
WITH ProductRevenue AS (
    -- Intermediate result: Total revenue per product
    SELECT 
        product_id, 
        SUM(total_amount) AS total_revenue
    FROM Sales
    GROUP BY product_id
)
-- Final selection: Listing products by revenue
SELECT 
    p.product_name, 
    pr.total_revenue
FROM Products p
JOIN ProductRevenue pr ON p.product_id = pr.product_id
ORDER BY pr.total_revenue DESC;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
WITH MonthlySales AS (
    -- Intermediate result: Total sales per month and year
    SELECT 
        EXTRACT(YEAR FROM sale_date)::TEXT AS sale_year,
        EXTRACT(MONTH FROM sale_date) AS sale_month,
        SUM(total_amount) AS total_revenue
    FROM Sales
    GROUP BY sale_year, sale_month
)
-- Final selection: The single highest revenue month
SELECT 
    sale_year, 
    sale_month, 
    total_revenue
FROM MonthlySales
ORDER BY total_revenue DESC
LIMIT 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
WITH ProductCustomerCount AS (
    -- Intermediate result: Number of unique customers per product
    SELECT 
        product_id, 
        COUNT(DISTINCT customer_id) AS unique_customer_count
    FROM Sales
    GROUP BY product_id
)
-- Final selection: Products purchased by more than 3 unique customers
SELECT 
    p.product_name, 
    pcc.unique_customer_count
FROM Products p
JOIN ProductCustomerCount pcc ON p.product_id = pcc.product_id
WHERE pcc.unique_customer_count > 3
ORDER BY pcc.unique_customer_count DESC;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
WITH ProductSalesVolume AS (
    -- Intermediate result: Total quantity sold per product
    SELECT 
        product_id, 
        SUM(quantity_sold) AS total_units_sold
    FROM Sales
    GROUP BY product_id
)
-- Final selection: Products that sold less than the average
SELECT 
    p.product_name, 
    psv.total_units_sold
FROM Products p
JOIN ProductSalesVolume psv ON p.product_id = psv.product_id
WHERE psv.total_units_sold < (SELECT AVG(total_units_sold) FROM ProductSalesVolume)
ORDER BY psv.total_units_sold ASC;

-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.
SELECT 
    customer_id, 
    SUM(total_amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS spending_rank
FROM Sales
GROUP BY customer_id;

-- 72. Rank products based on total quantity bought.
SELECT 
    product_id, 
    SUM(quantity_sold) AS total_quantity,
    DENSE_RANK() OVER (ORDER BY SUM(quantity_sold) DESC) AS quantity_rank
FROM Sales
GROUP BY product_id;

-- 73. Identify the 3rd highest spending customer.
SELECT 
    customer_id, 
    SUM(total_amount) AS total_spent
FROM Sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1 OFFSET 2;
--used AI

-- 74. Identify the 2nd most expensive product.
SELECT product_name, price
FROM Products
ORDER BY price DESC
LIMIT 1 OFFSET 1;

-- 75. Show the ranking of products within each category based on price.
SELECT 
    category,
    product_name,
    price,
    DENSE_RANK() OVER (
        PARTITION BY category 
        ORDER BY price DESC
    ) AS category_price_rank
FROM Products
ORDER BY category, category_price_rank;

-- 76. Show the ranking of customers based on the number of purchases they made.
SELECT 
    customer_id, 
    COUNT(sale_id) AS purchase_count,
    DENSE_RANK() OVER (ORDER BY COUNT(sale_id) DESC) AS purchase_rank
FROM Sales
GROUP BY customer_id
ORDER BY purchase_rank;

-- 77. Show the running total of sales amounts ordered by sale_date.
SELECT 
    sale_id, 
    sale_date, 
    total_amount,
    SUM(total_amount) OVER (ORDER BY sale_date, sale_id) AS running_total
FROM Sales
ORDER BY sale_date;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
SELECT 
    sale_id, 
    sale_date, 
    total_amount AS current_sale_amount,
    LAG(total_amount) OVER (ORDER BY sale_date, sale_id) AS previous_sale_amount
FROM Sales
ORDER BY sale_date;

-- 79. Show the next sale amount for each sale ordered by sale_date.
SELECT 
    sale_id, 
    sale_date, 
    total_amount AS current_sale_amount,
    LEAD(total_amount) OVER (ORDER BY sale_date, sale_id) AS next_sale_amount
FROM Sales
ORDER BY sale_date;

-- 80. Divide customers into 4 groups based on total spending.
WITH CustomerSpending AS (
    SELECT 
        customer_id, 
        SUM(total_amount) AS total_spent
    FROM Sales
    GROUP BY customer_id
)
SELECT 
    customer_id, 
    total_spent,
    -- Divides customers into 4 groups: 1 (highest) to 4 (lowest)
    NTILE(4) OVER (ORDER BY total_spent DESC) AS spending_group
FROM CustomerSpending;


-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
SELECT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    COUNT(DISTINCT p.category) AS category_count
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY c.customer_id, full_name
HAVING COUNT(DISTINCT p.category) > 1
ORDER BY category_count DESC;

-- 82. Which customers purchased products within 7 days of registering?
SELECT DISTINCT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    c.registration_date, 
    s.sale_date
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
WHERE s.sale_date >= c.registration_date 
  AND s.sale_date <= c.registration_date + INTERVAL '7 days'
ORDER BY c.registration_date;

-- 83. Which products have lower stock remaining than the average stock quantity?
SELECT 
    product_id, 
    product_name, 
    stock_quantity 
FROM Products
WHERE stock_quantity < (SELECT AVG(stock_quantity) FROM Products)
ORDER BY product_id ASC;

-- 84. Which customers purchased the same product more than once?
SELECT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    p.product_name, 
    COUNT(s.sale_id) AS times_purchased
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY c.customer_id, full_name, p.product_name
HAVING COUNT(s.sale_id) > 1
ORDER BY customer_id ASC;

-- 85. Which product categories generated the highest total revenue?
SELECT 
    p.category, 
    SUM(s.total_amount) AS total_revenue
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 86. Which products are among the top 3 most sold products?
WITH ProductSales AS (
    SELECT 
        product_id, 
        SUM(quantity_sold) AS total_units_sold
    FROM Sales
    GROUP BY product_id
)
SELECT 
    p.product_name, 
    ps.total_units_sold
FROM Products p
JOIN ProductSales ps ON p.product_id = ps.product_id
ORDER BY ps.total_units_sold DESC
LIMIT 3;

-- 87. Which customers purchased the most expensive product?
SELECT DISTINCT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    p.product_name, 
    p.price
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id
WHERE p.price = (SELECT MAX(price) FROM Products);

-- 88. Which products were purchased by the highest number of unique customers?
SELECT 
    p.product_name, 
    COUNT(DISTINCT s.customer_id) AS unique_customer_count
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY unique_customer_count DESC;

-- 89. Which customers made purchases above the average sale amount?
SELECT DISTINCT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    s.sale_id, 
    s.total_amount
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > (SELECT AVG(total_amount) FROM Sales)
ORDER BY customer_id ASC;

-- 90. Which customers purchased more products than the average quantity purchased per customer?
WITH CustomerTotals AS (
    -- Step 1: Calculate total units bought by each customer
    SELECT 
        customer_id, 
        SUM(quantity_sold) AS total_units
    FROM Sales
    GROUP BY customer_id
)
-- Step 2: Compare each customer to the overall average
SELECT 
    CONCAT(c.first_name,' ',c.last_name) as full_name,
    ct.total_units
FROM assignment.customers c
JOIN CustomerTotals ct ON c.customer_id = ct.customer_id
WHERE ct.total_units > (SELECT AVG(total_units) FROM CustomerTotals)
ORDER BY ct.total_units DESC;

-- ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?
WITH CustomerTiers AS (
    SELECT 
        customer_id, 
        SUM(total_amount) AS total_spent,
        NTILE(10) OVER (ORDER BY SUM(total_amount) DESC) AS spending_bucket
    FROM Sales
    GROUP BY customer_id
)
SELECT * 
FROM CustomerTiers 
WHERE spending_bucket = 1;
--used AI

-- 92. Which products contribute to the top 50% of total revenue?
WITH ProductRevenue AS (
    -- Step 1: Calculate total revenue per product
    SELECT 
        product_id, 
        SUM(total_amount) AS product_total
    FROM Sales
    GROUP BY product_id
),
RunningTotals AS (
    -- Step 2: Calculate a running sum of revenue (highest to lowest)
    -- and get the grand total of all revenue
    SELECT 
        p.product_name,
        pr.product_total,
        SUM(pr.product_total) OVER (ORDER BY pr.product_total DESC) AS cumulative_revenue,
        SUM(pr.product_total) OVER () AS grand_total
    FROM ProductRevenue pr
    JOIN Products p ON pr.product_id = p.product_id
)
-- Step 3: Filter for products where the cumulative sum is within the top 50%
SELECT 
    product_name, 
    product_total, 
    cumulative_revenue
FROM RunningTotals
WHERE cumulative_revenue <= (grand_total * 0.50)
ORDER BY product_total DESC;

-- 93. Which customers made purchases in consecutive months?
WITH MonthlyCustomerSales AS (
    SELECT DISTINCT
        customer_id,
        EXTRACT(YEAR FROM sale_date) AS s_year,
        EXTRACT(MONTH FROM sale_date) AS s_month,
        DATE_TRUNC('month', sale_date) AS month_start
    FROM Sales
),
ConsecutiveCheck AS (
    SELECT 
        customer_id,
        month_start,
        LAG(month_start) OVER (PARTITION BY customer_id ORDER BY month_start) AS prev_month_start
    FROM MonthlyCustomerSales
)
SELECT DISTINCT 
    CONCAT(c.first_name,' ',c.last_name) as full_name
FROM assignment.customers c
JOIN ConsecutiveCheck cc ON c.customer_id = cc.customer_id
WHERE cc.month_start = cc.prev_month_start + INTERVAL '1 month';
--used AI

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
SELECT 
    p.product_id, 
    p.product_name, 
    p.stock_quantity, 
    SUM(s.quantity_sold) AS total_sold,
    ABS(p.stock_quantity - SUM(s.quantity_sold)) AS stock_sales_difference
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name, p.stock_quantity
ORDER BY stock_sales_difference DESC;

-- 95. Which customers have spending above the average ending of their membership tier?
WITH CustomerTotals AS (
    -- Step 1: Calculate total spending and get the tier for each customer
    SELECT 
        c.customer_id, 
        CONCAT(c.first_name,' ',c.last_name) as full_name, 
        c.membership_status, 
        SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, full_name, c.membership_status
),
TierAverages AS (
    -- Step 2: Calculate the average spending within each specific tier
    SELECT 
        *,
        AVG(total_spent) OVER(PARTITION BY membership_status) AS avg_tier_spending
    FROM CustomerTotals
)
-- Step 3: Filter for those above their tier's average
SELECT 
    full_name, 
    membership_status, 
    total_spent, 
    ROUND(avg_tier_spending, 2) AS tier_average
FROM TierAverages
WHERE total_spent > avg_tier_spending
ORDER BY membership_status, total_spent DESC;

-- 96. Which products have higher sales than the average sales within their category?
WITH ProductPerformance AS (
    -- Step 1: Calculate total revenue per product and join category info
    SELECT 
        p.product_id,
        p.product_name,
        p.category,
        SUM(s.total_amount) AS total_product_revenue
    FROM Products p
    JOIN Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
CategoryComparison AS (
    -- Step 2: Calculate the average revenue for the specific category
    SELECT 
        *,
        AVG(total_product_revenue) OVER(PARTITION BY category) AS avg_category_revenue
    FROM ProductPerformance
)
-- Step 3: Filter for products that beat their category average
SELECT 
    product_name, 
    category, 
    total_product_revenue, 
    ROUND(avg_category_revenue, 2) AS category_avg
FROM CategoryComparison
WHERE total_product_revenue > avg_category_revenue
ORDER BY category, total_product_revenue DESC;

-- 97. Which customer made the largest single purchase relative to their total spending?
SELECT 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    MAX(s.total_amount) AS largest_single_purchase, 
    SUM(s.total_amount) AS total_lifetime_spending,
    -- Calculate the percentage (ratio)
    (MAX(s.total_amount) / SUM(s.total_amount) * 100) AS impact_percentage
FROM assignment.customers c
JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, full_name
ORDER BY impact_percentage DESC
LIMIT 1;

-- 98. Which products rank among the top 3 most sold products within each category?
WITH RankedProductSales AS (
    -- Step 1: Calculate total units sold per product
    SELECT 
        p.category,
        p.product_name,
        SUM(s.quantity_sold) AS total_units,
        -- Step 2: Rank products within each category bucket
        DENSE_RANK() OVER (
            PARTITION BY p.category 
            ORDER BY SUM(s.quantity_sold) DESC
        ) AS sales_rank
    FROM Products p
    JOIN Sales s ON p.product_id = s.product_id
    GROUP BY p.category, p.product_name
)
-- Step 3: Filter for only the top 3 in each group
SELECT 
    category,
    product_name,
    total_units,
    sales_rank
FROM RankedProductSales
WHERE sales_rank <= 3
ORDER BY category, sales_rank;

-- 99. Which customers are tied for the highest total spending?
WITH RankedSpending AS (
    SELECT 
        customer_id, 
        SUM(total_amount) AS total_spent,
        DENSE_RANK() OVER (ORDER BY SUM(total_amount) DESC) AS spending_rank
    FROM Sales
    GROUP BY customer_id
)
SELECT customer_id, total_spent
FROM RankedSpending
WHERE spending_rank = 1;

-- 100. Which products generated sales every year present in the dataset?
SELECT 
    p.product_id, 
    p.product_name
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
-- Count how many unique years this product appears in
HAVING COUNT(DISTINCT EXTRACT(YEAR FROM s.sale_date)) = (
    -- Compare it to the total number of unique years in the whole table
    SELECT COUNT(DISTINCT EXTRACT(YEAR FROM sale_date)) 
    FROM Sales
);

-- 101. Update the products table to assign a price_category as Expensive (price > 1000), Moderate (price between 500 and 1000), or Affordable (price < 500) using CASE WHEN
alter table products 
add column price_category VARCHAR(20);
UPDATE Products
SET price_category = CASE 
    WHEN price > 1000 THEN 'Expensive'
    WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
    WHEN price < 500 THEN 'Affordable'
    ELSE 'Uncategorized' 
END;

-- 102. Update the customers table to assign a customer_level based on total spending as VIP (>20000), Regular (10000–20000), or New (<10000) using CASE WHEN
alter table customers 
add column customer_level VARCHAR(20);
UPDATE customers c
SET customer_level = CASE 
    WHEN total_spent > 20000 THEN 'VIP'
    WHEN total_spent BETWEEN 10000 AND 20000 THEN 'Regular'
    ELSE 'New'
END
FROM (
    SELECT customer_id, SUM(total_amount) AS total_spent
    FROM sales
    GROUP BY customer_id
) AS spending_data
WHERE c.customer_id = spending_data.customer_id;

-- 103. Update the products table to assign a stock_status as Low Stock or Sufficient Stock based on stock_quantity using CASE WHEN
alter table products 
add column stock_status VARCHAR(20);
UPDATE Products
SET stock_status = CASE 
    WHEN stock_quantity < 10 THEN 'Low Stock'
    ELSE 'Sufficient Stock'
END;

-- 104. Display each customer’s registration year from the registration_date
SELECT 
    CONCAT(first_name,' ',last_name) as full_name, 
    registration_date,
    EXTRACT(YEAR FROM registration_date)::TEXT AS registration_year
FROM customers;

-- 105. Count how many customers registered in each year
SELECT 
    EXTRACT(YEAR FROM registration_date)::TEXT AS join_year, 
    COUNT(customer_id) AS total_customers
FROM assignment.customers
GROUP BY join_year
ORDER BY join_year DESC;

-- 106. Find the total sales amount for each month
SELECT 
    EXTRACT(MONTH FROM sale_date) AS sale_month,
    SUM(total_amount) AS monthly_revenue
FROM Sales
GROUP BY sale_month
ORDER BY sale_month DESC;

-- 107. Show all sales made in the year 2023
SELECT *
FROM Sales
WHERE sale_date >= '2023-01-01' 
  AND sale_date <= '2023-12-31'
ORDER BY sale_date;

-- 108. Find the total sales amount for each year
SELECT 
    EXTRACT(YEAR FROM sale_date)::TEXT AS sale_year, 
    SUM(total_amount) AS yearly_revenue
FROM Sales
GROUP BY sale_year
ORDER BY sale_year DESC;

-- 109. Calculate the number of days each customer has been registered (from registration_date to current date)
SELECT 
    CONCAT(first_name,' ',last_name) as full_name, 
    registration_date,
    CURRENT_DATE - registration_date AS days_registered
FROM customers
ORDER BY days_registered DESC;

-- 110. Display each sale and extract the year and month from the sale date
SELECT 
    sale_id,
    total_amount,
    sale_date,
    EXTRACT(YEAR FROM sale_date)::TEXT AS sale_year,
    EXTRACT(MONTH FROM sale_date) AS sale_month
FROM Sales
ORDER BY sale_id ASC;

-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE
SELECT 
    CONCAT(first_name,' ',last_name) as full_name, 
    COALESCE(email, 'No Email Provided') AS email_status
FROM customers;

-- 112. Find customers who do not have an email address
SELECT 
    customer_id, 
    CONCAT(first_name,' ',last_name) as full_name
FROM customers
WHERE email IS NULL;

-- 113. Find products that have never been sold using a subquery
SELECT 
    product_id, 
    product_name
FROM Products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id 
    FROM Sales
);

-- 114. Find customers who have not made any purchases using a subquery
SELECT 
    customer_id, 
    CONCAT(first_name,' ',last_name) as full_name
FROM Customers
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id 
    FROM Sales 
    WHERE customer_id IS NOT NULL
);

-- 115. Update the products table to assign a price_category (Premium, Standard, Budget) based on price using CASE WHEN
UPDATE Products
SET price_category = CASE 
    WHEN price >= 1000 THEN 'Premium'
    WHEN price BETWEEN 400 AND 999 THEN 'Standard'
    ELSE 'Budget'
END;

-- 116. Create a PostgreSQL function/procedure that takes a minimum revenue as input and returns all products whose total sales exceed that value
CREATE OR REPLACE FUNCTION get_high_revenue_products(min_revenue_input NUMERIC)
RETURNS TABLE (
    product_id INT,
    product_name VARCHAR,
    total_sales NUMERIC
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.product_id,
        p.product_name,
        SUM(s.total_amount) AS total_sales
    FROM Products p
    JOIN Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
    HAVING SUM(s.total_amount) > min_revenue_input
    ORDER BY total_sales DESC;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_high_revenue_products(50000);

-- 117. Create a PostgreSQL function/procedure that takes a customer_id as input and returns the total amount spent by that customer
CREATE OR REPLACE FUNCTION get_customer_total_spend(input_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total_spend NUMERIC;
BEGIN
    SELECT SUM(total_amount) INTO total_spend
    FROM Sales
    WHERE customer_id = input_id;
    RETURN COALESCE(total_spend, 0);
END;
$$ LANGUAGE plpgsql;

SELECT get_customer_total_spend(10);

SELECT customer_id, get_customer_total_spend(customer_id) 
FROM Customers;

-- 118. Create a PostgreSQL function/procedure that takes a start_date and end_date as input and returns the number of orders made within that date range
CREATE OR REPLACE FUNCTION count_orders_in_range(start_date DATE, end_date DATE)
RETURNS INTEGER AS $$
DECLARE
    order_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO order_count
    FROM Sales
    WHERE sale_date >= start_date 
      AND sale_date <= end_date;

    RETURN order_count;
END;
$$ LANGUAGE plpgsql;

-- Count orders for the first quarter of 2024
SELECT count_orders_in_range('2024-01-01', '2024-03-31') AS total_orders;

-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table 
CREATE OR REPLACE PROCEDURE insert_new_sale(
    p_customer_id INT,
    p_product_id INT,
    p_quantity INT,
    p_total_amount NUMERIC,
    p_sale_date DATE DEFAULT CURRENT_DATE
)
AS $$
BEGIN
    INSERT INTO Sales (customer_id, product_id, quantity, total_amount, sale_date)
    VALUES (p_customer_id, p_product_id, p_quantity, p_total_amount, p_sale_date);
    
    -- In procedures, you can commit transactions if needed
    COMMIT;
END;
$$ LANGUAGE plpgsql;

-- 120. Create an index on the product_id column in the sales table to improve join performance
CREATE INDEX idx_sales_product_id 
ON Sales (product_id);

-- 121. Create an index on the registration_date column in the customers table to improve filtering by date
CREATE INDEX idx_customers_reg_date 
ON customers (registration_date);

-- 122. Write a transaction that inserts a new sale using sale_id, customer_id, product_id, quantity_sold, sale_date, and total_amount, then updates the corresponding product stock_quantity, ensuring both operations succeed or fail together
ROLLBACK;
BEGIN;

-- 1. Insert the new sale record
INSERT INTO Sales (sale_id, customer_id, product_id, quantity, sale_date, total_amount)
VALUES (501, 10, 5, 2, '2024-05-20', 3000.00);

-- 2. Update the product stock by subtracting the quantity sold
UPDATE Products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 5;

-- 3. Save both changes permanently
COMMIT;
--used AI

-- 123. Write a transaction that updates a customer’s email and rolls back the change if the email is invalid
DO $$
DECLARE
    new_email TEXT := 'invalid-email-address'; -- Test your input here
BEGIN
    -- 1. Perform the update
    UPDATE assignment.customers 
    SET email = new_email 
    WHERE customer_id = 1;

    -- 2. Validate the email (checking for '@' and '.')
    IF new_email NOT LIKE '%@%.%' THEN
        RAISE NOTICE 'Invalid email format. Rolling back transaction.';
        ROLLBACK; 
    ELSE
        RAISE NOTICE 'Email is valid. Committing changes.';
        -- In a DO block, the transaction commits automatically at END
        -- unless a ROLLBACK or error is triggered.
    END IF;
END $$;
--AI

-- 124. Create a view that shows total revenue per product
CREATE OR REPLACE VIEW view_total_revenue_per_product AS
SELECT 
    p.product_id, 
    p.product_name, 
    SUM(s.total_amount) AS total_revenue
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;

-- 125. Create a view that shows each customer and their total spending
CREATE OR REPLACE VIEW view_customer_spending AS
SELECT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name, 
    COALESCE(SUM(s.total_amount), 0) AS total_spent
FROM assignment.customers c
LEFT JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, full_name;

-- 126. Use UNION to combine a list of all customer first names and product names into a single column
SELECT CONCAT(first_name,' ',last_name) as name_list
FROM customers
UNION
SELECT product_name AS name_list
FROM Products;

-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases
SELECT customer_id
FROM customers
INTERSECT
SELECT customer_id
FROM Sales;

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN
SELECT 
    p.product_id, 
    p.product_name
FROM Products p
LEFT JOIN Sales s ON p.product_id = s.product_id
WHERE s.product_id IS NULL;

-- 129. Use NOT EXISTS to find customers who have not made any purchases
SELECT 
    c.customer_id, 
    CONCAT(c.first_name,' ',c.last_name) as full_name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1 
    FROM Sales s 
    WHERE s.customer_id = c.customer_id
);

-- 130. Cast the price column to an integer and display it alongside the original price
SELECT 
    product_name, 
    price AS original_price, 
    CAST(price AS INTEGER) AS integer_price
FROM Products;

-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format
SELECT 
    CONCAT(first_name,' ',last_name) as full_name, 
    registration_date,
    TO_CHAR(registration_date, 'YYYY-MM') AS formatted_date
FROM customers;

-- 132. The following query returns an error due to improper GROUP BY usage. Identify and fix the issue
-- SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;
SELECT 
    p.product_id, 
    p.product_name, 
    SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;

-- 133. The following query incorrectly filters aggregated results using WHERE. Identify and correct it
-- SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;
SELECT 
    product_id, 
    SUM(total_amount) AS total_revenue
FROM Sales
GROUP BY product_id
HAVING SUM(total_amount) > 1000;

-- 134. The following query returns incorrect results because it uses the wrong join condition. Identify and fix it
-- SELECT *
-- FROM assignment.sales s
-- JOIN assignment.products p
--   ON s.customer_id = p.product_id;
SELECT *
FROM sales s
JOIN products p ON s.product_id = p.product_id;

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE if any
SELECT 
    customer_id,
    CONCAT(first_name,' ',last_name) as full_name,
    COALESCE(email, 'No Email Provided') AS email_status
FROM customers;

-- 136. Trim any leading or trailing spaces from customer first names if any
SELECT 
    TRIM(first_name) || ' ' || TRIM(last_name) AS full_name
FROM customers;

-- 137. Convert all customer emails to lowercase if any
UPDATE customers
SET email = LOWER(email)
WHERE email IS NOT NULL;

-- 138. Replace empty strings in phone numbers with NULL if any
SELECT 
    customer_id,
    first_name,
    last_name,
    phone_number,
    -- Replace empty strings with NULL
    NULLIF(phone_number, '') AS cleaned_phone
FROM Customers
ORDER BY customer_id;

-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any
SELECT
    registration_date,
    EXTRACT(YEAR FROM registration_date)::TEXT AS registration_year
FROM Customers
ORDER BY registration_year DESC NULLS LAST;


