--Create the Customers table
CREATE TABLE Customers (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Customer_Name VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Signup_Date DATE
);
--Create the Orders table
CREATE TABLE Orders (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Order_Date DATE,
    Product VARCHAR(100),
    Category VARCHAR(50),
    Quantity INT,
    Sales_Amount DECIMAL(12,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
--Create the Payments table
CREATE TABLE Payments (
    Payment_ID VARCHAR(10) PRIMARY KEY,
    Order_ID VARCHAR(10),
    Payment_Method VARCHAR(30),
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Payments;

--Insert Customer Data
INSERT INTO customers
(customer_id, customer_name, city, state, signup_date)
VALUES
('C001', 'Rahul Sharma', 'Bangalore', 'Karnataka', '2025-01-15'),
('C002', 'Priya Nair', 'Mysore', 'Karnataka', '2025-01-20'),
('C003', 'Arjun Reddy', 'Hyderabad', 'Telangana', '2025-02-05'),
('C004', 'Sneha Patil', 'Pune', 'Maharashtra', '2025-02-18'),
('C005', 'Vikram Singh', 'Delhi', 'Delhi', '2025-03-10'),
('C006', 'Ananya Rao', 'Bangalore', 'Karnataka', '2025-03-22'),
('C007', 'Kiran Kumar', 'Chennai', 'Tamil Nadu', '2025-04-01'),
('C008', 'Divya Menon', 'Kochi', 'Kerala', '2025-04-15'),
('C009', 'Rohit Verma', 'Mumbai', 'Maharashtra', '2025-05-03'),
('C010', 'Pooja Joshi', 'Mysore', 'Karnataka', '2025-05-20'),
('C011', 'Amit Shah', 'Ahmedabad', 'Gujarat', '2025-06-05'),
('C012', 'Neha Gupta', 'Delhi', 'Delhi', '2025-06-18'),
('C013', 'Manoj Kumar', 'Bangalore', 'Karnataka', '2025-07-02'),
('C014', 'Kavya Shetty', 'Mangalore', 'Karnataka', '2025-07-15'),
('C015', 'Sanjay Rao', 'Hyderabad', 'Telangana', '2025-08-01'),
('C016', 'Meera Iyer', 'Chennai', 'Tamil Nadu', '2025-08-20'),
('C017', 'Nikhil Jain', 'Pune', 'Maharashtra', '2025-09-05'),
('C018', 'Aishwarya Das', 'Kolkata', 'West Bengal', '2025-09-18'),
('C019', 'Varun Malhotra', 'Delhi', 'Delhi', '2025-10-10'),
('C020', 'Shreya Kulkarni', 'Mumbai', 'Maharashtra', '2025-11-01');

--Insert Order Data
INSERT INTO orders
(order_id, customer_id, order_date, product, category, quantity, sales_amount)
VALUES
('O1001', 'C001', '2026-01-05', 'Laptop', 'Electronics', 1, 65000),
('O1002', 'C002', '2026-01-08', 'Smartphone', 'Electronics', 1, 28000),
('O1003', 'C003', '2026-01-12', 'Headphones', 'Electronics', 2, 5000),
('O1004', 'C004', '2026-01-18', 'Office Chair', 'Furniture', 1, 12000),
('O1005', 'C005', '2026-01-22', 'Monitor', 'Electronics', 1, 18000),
('O1006', 'C001', '2026-02-03', 'Keyboard', 'Accessories', 1, 2500),
('O1007', 'C006', '2026-02-07', 'Laptop', 'Electronics', 1, 72000),
('O1008', 'C007', '2026-02-14', 'Printer', 'Electronics', 1, 15000),
('O1009', 'C008', '2026-02-20', 'Desk', 'Furniture', 1, 10000),
('O1010', 'C009', '2026-02-25', 'Smartphone', 'Electronics', 1, 32000),
('O1011', 'C010', '2026-03-02', 'Laptop', 'Electronics', 1, 68000),
('O1012', 'C011', '2026-03-06', 'Mouse', 'Accessories', 2, 2000),
('O1013', 'C012', '2026-03-10', 'Tablet', 'Electronics', 1, 22000),
('O1014', 'C013', '2026-03-15', 'Office Chair', 'Furniture', 2, 24000),
('O1015', 'C014', '2026-03-22', 'Headphones', 'Electronics', 1, 3000),
('O1016', 'C015', '2026-04-01', 'Laptop', 'Electronics', 1, 75000),
('O1017', 'C016', '2026-04-05', 'Smartwatch', 'Electronics', 1, 12000),
('O1018', 'C017', '2026-04-12', 'Monitor', 'Electronics', 2, 36000),
('O1019', 'C018', '2026-04-18', 'Desk', 'Furniture', 1, 11000),
('O1020', 'C019', '2026-04-25', 'Keyboard', 'Accessories', 2, 5000),
('O1021', 'C020', '2026-05-03', 'Smartphone', 'Electronics', 1, 35000),
('O1022', 'C001', '2026-05-08', 'Monitor', 'Electronics', 1, 19000),
('O1023', 'C005', '2026-05-15', 'Mouse', 'Accessories', 3, 3000),
('O1024', 'C010', '2026-05-20', 'Laptop', 'Electronics', 1, 70000),
('O1025', 'C013', '2026-05-28', 'Printer', 'Electronics', 1, 16000),
('O1026', 'C002', '2026-06-04', 'Tablet', 'Electronics', 1, 24000),
('O1027', 'C006', '2026-06-10', 'Smartphone', 'Electronics', 1, 30000),
('O1028', 'C009', '2026-06-16', 'Office Chair', 'Furniture', 1, 13000),
('O1029', 'C014', '2026-06-21', 'Keyboard', 'Accessories', 2, 4500),
('O1030', 'C018', '2026-06-28', 'Laptop', 'Electronics', 1, 67000),
('O1031', 'C003', '2026-07-03', 'Monitor', 'Electronics', 1, 17500),
('O1032', 'C007', '2026-07-08', 'Headphones', 'Electronics', 2, 5500),
('O1033', 'C011', '2026-07-12', 'Desk', 'Furniture', 1, 12500),
('O1034', 'C016', '2026-07-18', 'Smartwatch', 'Electronics', 1, 14000),
('O1035', 'C019', '2026-07-22', 'Laptop', 'Electronics', 1, 73000),
('O1036', 'C004', '2026-07-25', 'Mouse', 'Accessories', 2, 2200),
('O1037', 'C008', '2026-07-27', 'Tablet', 'Electronics', 1, 23000),
('O1038', 'C012', '2026-07-28', 'Office Chair', 'Furniture', 1, 11500),
('O1039', 'C015', '2026-07-29', 'Smartphone', 'Electronics', 1, 31000),
('O1040', 'C020', '2026-07-30', 'Monitor', 'Electronics', 1, 20000);

--Insert payment data
INSERT INTO payments
(payment_id, order_id, payment_method, payment_status)
VALUES
('P001', 'O1001', 'UPI', 'Paid'),
('P002', 'O1002', 'Credit Card', 'Paid'),
('P003', 'O1003', 'UPI', 'Paid'),
('P004', 'O1004', 'Debit Card', 'Paid'),
('P005', 'O1005', 'Credit Card', 'Paid'),
('P006', 'O1006', 'UPI', 'Paid'),
('P007', 'O1007', 'Net Banking', 'Paid'),
('P008', 'O1008', 'Debit Card', 'Paid'),
('P009', 'O1009', 'UPI', 'Paid'),
('P010', 'O1010', 'Credit Card', 'Paid'),
('P011', 'O1011', 'UPI', 'Paid'),
('P012', 'O1012', 'Cash on Delivery', 'Paid'),
('P013', 'O1013', 'Credit Card', 'Paid'),
('P014', 'O1014', 'UPI', 'Paid'),
('P015', 'O1015', 'Debit Card', 'Paid'),
('P016', 'O1016', 'Net Banking', 'Paid'),
('P017', 'O1017', 'UPI', 'Paid'),
('P018', 'O1018', 'Credit Card', 'Paid'),
('P019', 'O1019', 'Cash on Delivery', 'Paid'),
('P020', 'O1020', 'UPI', 'Paid'),
('P021', 'O1021', 'Credit Card', 'Paid'),
('P022', 'O1022', 'UPI', 'Paid'),
('P023', 'O1023', 'Debit Card', 'Paid'),
('P024', 'O1024', 'Credit Card', 'Paid'),
('P025', 'O1025', 'UPI', 'Paid'),
('P026', 'O1026', 'Net Banking', 'Paid'),
('P027', 'O1027', 'UPI', 'Paid'),
('P028', 'O1028', 'Cash on Delivery', 'Paid'),
('P029', 'O1029', 'Debit Card', 'Paid'),
('P030', 'O1030', 'Credit Card', 'Paid'),
('P031', 'O1031', 'UPI', 'Paid'),
('P032', 'O1032', 'Debit Card', 'Paid'),
('P033', 'O1033', 'UPI', 'Paid'),
('P034', 'O1034', 'Credit Card', 'Paid'),
('P035', 'O1035', 'Net Banking', 'Paid'),
('P036', 'O1036', 'UPI', 'Paid'),
('P037', 'O1037', 'Credit Card', 'Paid'),
('P038', 'O1038', 'Cash on Delivery', 'Paid'),
('P039', 'O1039', 'UPI', 'Paid'),
('P040', 'O1040', 'Debit Card', 'Paid');