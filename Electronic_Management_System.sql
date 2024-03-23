use sc1;

create table Product(
    ProductID int  primary key ,
    ProductCode varchar(100),
    ProductName varchar(100) ,
    ProductCategory varchar(100),
    ProductDescription varchar(1500),
    ReorderQuantity int
);


INSERT INTO Product (ProductID, ProductCode, ProductName, ProductCategory, ProductDescription, ReorderQuantity)
VALUES
(1, 'LPT001', 'Laptop', 'Electronics', 'High-performance laptop with SSD storage', 20),
(2, 'PHN001', 'Smartphone', 'Electronics', 'Latest model smartphone with dual camera', 30),
(3, 'TAB001', 'Tablet', 'Electronics', '10-inch tablet with long battery life', 25),
(4, 'ACP001', 'Air Conditioner', 'Appliances', 'Energy-efficient air conditioner with remote control', 15),
(5, 'REF001', 'Refrigerator', 'Appliances', 'Large capacity refrigerator with frost-free technology', 10),
(6, 'TV001', 'Smart TV', 'Electronics', '55-inch smart TV with 4K resolution', 12),
(7, 'SWT001', 'Smartwatch', 'Electronics', 'Fitness tracking smartwatch with heart rate monitor', 18),
(8, 'SPK001', 'Bluetooth Speaker', 'Electronics', 'Portable Bluetooth speaker with waterproof design', 22),
(9, 'HDP001', 'Headphones', 'Electronics', 'Wireless headphones with noise cancellation feature', 28),
(10, 'CMF001', 'Coffee Maker', 'Appliances', 'Programmable coffee maker with built-in grinder', 20);


CREATE TABLE EMPLOYEE(
	EmployeeID int PRIMARY KEY,
    EmployeeName varchar(100),
    Position varchar(100),
    Department varchar(100),
    ContactNumber varchar(20),
   Email varchar(100)
);


INSERT INTO Employee (EmployeeID, EmployeeName, Position, Department, ContactNumber, Email)VALUES
(1, 'John Doe', 'Manager', 'Sales', '123-456-7890', 'johndoe@gmail.com'),
(2, 'Jane Smith', 'Supervisor', 'Warehouse', '456-789-0123', 'janesmith@gmail.com'),
(3, 'Michael Johnson', 'Sales Associate', 'Sales', '789-012-3456', 'michaeljohnson@gmail.com'),
(4, 'Emily Williams', 'Warehouse Coordinator', 'Warehouse', '012-345-6789', 'emilywilliams@gmail.com'),
(5, 'David Brown', 'IT Specialist', 'IT', '345-678-9012', 'davidbrown@gmail.com'),
(6, 'Sarah Davis', 'Customer Service Representative', 'Customer Service', '678-901-2345', 'sarahdavis@gmail.com'),
(7, 'Robert Wilson', 'Accountant', 'Finance', '901-234-5678', 'robertwilson@gmail.com'),
(8, 'Jennifer Martinez', 'HR Manager', 'Human Resources', '234-567-8901', 'jennifermartinez@gmail.com'),
(9, 'James Taylor', 'Technical Support Specialist', 'IT', '567-890-1234', 'jamestaylor@gmail.com'),
(10, 'Amanda Anderson', 'Marketing Manager', 'Marketing', '890-123-4567', 'amandaanderson@gmail.com');


CREATE TABLE Location (
    LocationID int primary key,
    LocationName varchar(200) ,
    LocationAddress varchar(200) ,
    EmployeeID int,
    foreign key Location(EmployeeID) references Employee(EmployeeID),
    Security_Level int 
    );
    
    
INSERT INTO Location (LocationID, LocationName, LocationAddress, EmployeeID, Security_Level)
VALUES
(1, 'Main Warehouse', '123 Main Street', 2, 3),
(2, 'Retail Store', '456 Elm Street', 1, 4),
(3, 'Corporate Office', '789 Oak Street', 7, 5),
(4, 'Distribution Center', '234 Pine Street', 4, 3),
(5, 'IT Department', '567 Maple Street', 5, 4),
(6, 'Customer Service Center', '890 Cedar Street', 6, 2),
(7, 'Finance Department', '345 Walnut Street', 7, 4),
(8, 'Marketing Department', '901 Birch Street', 10, 3),
(9, 'HR Department', '678 Spruce Street', 8, 2),
(10, 'Sales Office', '123 Cherry Street', 3, 3);


CREATE TABLE Warehouse(
    WarehouseID int  Primary key ,
    WarehouseName varchar(100) ,
    LocationID int,
    foreign key Warehouse(LocationID) references Location(LocationID),
	Capacity int,
    Electronic_Tracking_System varchar(1) check(Electronic_Tracking_System = 'Y' or Electronic_Tracking_System= 'N')
);


INSERT INTO Warehouse (WarehouseID, WarehouseName, LocationID, Capacity, Electronic_Tracking_System)
VALUES
(1, 'Warehouse A', 1, 1000, 'Y'),
(2, 'Warehouse B', 2, 800, 'N'),
(3, 'Warehouse C', 3, 1200, 'Y'),
(4, 'Warehouse D', 4, 1500, 'Y'),
(5, 'Warehouse E', 5, 900, 'N'),
(6, 'Warehouse F', 6, 1100, 'Y'),
(7, 'Warehouse G', 7, 1300, 'N'),
(8, 'Warehouse H', 8, 1000, 'Y'),
(9, 'Warehouse I', 9, 1400, 'Y'),
(10, 'Warehouse J', 10, 950, 'N');



CREATE TABLE Customer (
    CustomerID int Primary key ,
    CustomerName varchar(100)  NOT NULL ,
    CustomerAddress varchar(200)  NOT NULL,
    Phone_Number numeric(10),
    Email_address varchar(100) NOT NULL
);


INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, Phone_Number, Email_address) VALUES
(1, 'John Doe', '123 Main St, City, Country', 1234567890, 'john@example.com'),
(2, 'Alice Smith', '456 Elm St, City, Country', 9876543210, 'alice@example.com'),
(3, 'Bob Johnson', '789 Oak St, City, Country', 1357924680, 'bob@example.com'),
(4, 'Emily Davis', '321 Pine St, City, Country', 2468013579, 'emily@example.com'),
(5, 'Michael Wilson', '654 Maple St, City, Country', 9876543210, 'michael@example.com'),
(6, 'Sarah Brown', '987 Cedar St, City, Country', 1234567890, 'sarah@example.com'),
(7, 'David Lee', '159 Birch St, City, Country', 3579134680, 'david@example.com'),
(8, 'Jennifer Taylor', '852 Walnut St, City, Country', 2468013579, 'jennifer@example.com'),
(9, 'James Clark', '753 Spruce St, City, Country', 1234567890, 'james@example.com'),
(10, 'Emma Rodriguez', '456 Pine St, City, Country', 9876543210, 'emma@example.com');


CREATE TABLE Supplier(
	Supplier_ID int primary key,
    Supplier_Name varchar(100) not nULL,
    Supplier_addr varchar(100) not null,
	Supplier_Phone numeric(10) not null,
    Supplier_Payment_Terms varchar(50)
);

INSERT INTO Supplier (Supplier_ID, Supplier_Name, Supplier_addr, Supplier_Phone, Supplier_Payment_Terms)
VALUES
(1, 'Tech Supplies', '123 Tech Street', 1234567890, 'Net 30'),
(2, 'Gadget Galaxy', '456 Gadget Street', 2345678901, 'Net 60'),
(3, 'ElectroWholesale', '789 Electro Avenue', 3456789012, 'Net 45'),
(4, 'Appliance Distributors', '234 Appliance Road', 4567890123, 'Net 60'),
(5, 'Tech Innovations', '567 Innovation Blvd', 5678901234, 'Net 30'),
(6, 'Gadget Emporium', '890 Gadget Lane', 6789012345, 'Net 60'),
(7, 'Electronics World', '901 Electronics Street', 7890123456, 'Net 45'),
(8, 'Innovative Solutions', '123 Innovation Avenue', 8901234567, 'Net 30'),
(9, 'Gizmo Mart', '456 Gizmo Road', 9012345678, 'Net 60'),
(10, 'Appliance Heaven', '789 Appliance Street', 9876543210,'Net 45');


CREATE TABLE OrderDetail (
    OrderDetailID int Primary key,
    OrderQuantity int NOT NULL,
    ExpectedDate Date NOT NULL,
    ActualDate Date NOT NULL,
    ProductID int ,
    foreign key OrderDetail(ProductID) references Product(ProductID)
   );
   
 INSERT INTO OrderDetail (OrderDetailID, OrderQuantity, ExpectedDate, ActualDate, ProductID)
VALUES
(1, 5, '2024-03-23', '2024-03-23', 1),
(2, 10, '2024-03-25', '2024-03-25', 3),
(3, 3, '2024-03-24', '2024-03-24', 5),
(4, 8, '2024-03-26', '2024-03-26', 7),
(5, 6, '2024-03-23', '2024-03-23', 9),
(6, 15, '2024-03-28', '2024-03-28', 2),
(7, 2, '2024-03-27', '2024-03-27', 4),
(8, 12, '2024-03-29', '2024-03-29', 6),
(9, 7, '2024-03-24', '2024-03-24', 8),
(10, 4, '2024-03-25', '2024-03-25', 10);


CREATE TABLE DeliveryDetail (
    DeliveryDetailID int Primary key,
    DeliveryQuantity int NOT NULL,
    ExpectedDate date NOT NULL,
    DeliveryStatus varchar(50),
	DeliveryMethod varchar(50)
);
INSERT INTO DeliveryDetail (DeliveryDetailID, DeliveryQuantity, ExpectedDate, DeliveryStatus, DeliveryMethod)
VALUES
(1, 5, '2024-03-24', 'In Transit', 'Ground Shipping'),
(2, 10, '2024-03-26', 'Delivered', 'Express Delivery'),
(3, 3, '2024-03-25', 'In Transit', 'Air Freight'),
(4, 8, '2024-03-27', 'Delivered', 'Ground Shipping'),
(5, 6, '2024-03-24', 'In Transit', 'Ground Shipping'),
(6, 15, '2024-03-29', 'Delivered', 'Express Delivery'),
(7, 2, '2024-03-28', 'In Transit', 'Air Freight'),
(8, 12, '2024-03-30', 'Delivered', 'Ground Shipping'),
(9, 7, '2024-03-25', 'In Transit', 'Ground Shipping'),
(10, 4, '2024-03-26', 'Delivered', 'Express Delivery');

CREATE TABLE Review(
	ReviewID int PRIMARY KEY,
    ProductID int,
    CustomerID int,
    Rating int,
    Comment varchar(500),
    ReviewDate date,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)

);

INSERT INTO Review (ReviewID, ProductID, CustomerID, Rating, Comment, ReviewDate)
VALUES
(1, 1, 1, 4, 'Great laptop, fast delivery!', '2024-03-25'),
(2, 2, 2, 5, 'Love this smartphone, amazing camera!', '2024-03-26'),
(3, 3, 3, 4, 'Nice tablet, good battery life.', '2024-03-27'),
(4, 4, 4, 3, 'Decent air conditioner, but installation was a hassle.', '2024-03-28'),
(5, 5, 5, 5, 'Awesome refrigerator, spacious and keeps food fresh!', '2024-03-29'),
(6, 6, 6, 4, 'Impressive smart TV, excellent picture quality.', '2024-03-30'),
(7, 7, 7, 3, 'Smartwatch works well but battery life could be better.', '2024-03-31'),
(8, 8, 8, 4, 'Bluetooth speaker has good sound quality, durable too.', '2024-04-01'),
(9, 9, 9, 5, 'Headphones are comfortable and sound fantastic!', '2024-04-02'),
(10, 10, 10, 3, 'Coffee maker makes great coffee but it\'s a bit noisy.','2024-04-03');

CREATE TABLE Warranty (
    WarrantyID int PRIMARY KEY,
    ProductID int,
    StartDate date,
    EndDate date,
    Terms varchar(200),
    Coverage_type varchar(50),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Warranty (WarrantyID, ProductID, StartDate, EndDate, Terms, Coverage_type)
VALUES
(1, 1, '2024-03-25', '2026-03-25', 'Standard warranty terms apply.', 'Manufacturer Warranty'),
(2, 2, '2024-03-26', '2026-03-26', 'Extended warranty with additional coverage.', 'Extended Warranty'),
(3, 3, '2024-03-27', '2026-03-27', 'Limited warranty, excludes certain damages.', 'Limited Warranty'),
(4, 4, '2024-03-28', '2026-03-28', 'Comprehensive warranty covering all parts and labor.', 'Comprehensive Warranty'),
(5, 5, '2024-03-29', '2026-03-29', 'Standard warranty terms apply.', 'Manufacturer Warranty'),
(6, 6, '2024-03-30', '2026-03-30', 'Extended warranty with accidental damage protection.', 'Extended Warranty'),
(7, 7, '2024-03-31', '2026-03-31', 'Limited warranty, excludes normal wear and tear.', 'Limited Warranty'),
(8, 8, '2024-04-01', '2026-04-01', 'Comprehensive warranty covering all defects and malfunctions.', 'Comprehensive Warranty'),
(9, 9, '2024-04-02', '2026-04-02', 'Standard warranty terms apply.', 'Manufacturer Warranty'),
(10, 10, '2024-04-03', '2026-04-03', 'Extended warranty with optional service plan.', 'Extended Warranty');



#Simple Select Query:
select * from product;
select * from location;
select * from warehouse;
select * from supplier;
select * from OrderDetail;
select * from customer;
select * from DeliveryDetail;
select * from Review;
select * from Warranty;
select * from employee;


#Select Query with WHERE Clause:
SELECT * FROM Employee WHERE Department = 'Sales';

#Select Query with ORDER BY Clause:
SELECT * FROM Location ORDER BY Security_Level DESC;

#Select Query with group by clause:
SELECT ProductCategory, COUNT(*) AS TotalProducts FROM Product GROUP BY ProductCategory;


#select distinct clause:
SELECT DISTINCT Department FROM Employee;

#Joins- Review and product id: Inner join
SELECT Product.ProductName, Review.Rating, Review.Comment
FROM Product
INNER JOIN Review ON Product.ProductID = Review.ProductID;

#Select Query with Subquery:
SELECT * FROM Employee WHERE Department IN (SELECT DISTINCT Department FROM Warehouse);

#Select Query with BETWEEN Clause:	
SELECT * FROM Warranty WHERE StartDate BETWEEN '2024-03-25' AND '2024-03-28';

# Select Query with Like Clause:
SELECT * FROM Customer WHERE CustomerName LIKE 'J%';


# Select Query with In Clause:
SELECT * FROM Product WHERE ProductID IN (1, 3, 5);


#Select Query with JOIN, GROUP BY, and HAVING Clause:
SELECT Employee.Department, AVG(Warehouse.Capacity) AS AvgCapacity
FROM Employee
INNER JOIN Location ON Employee.EmployeeID = Location.EmployeeID
INNER JOIN Warehouse ON Location.LocationID = Warehouse.LocationID
GROUP BY Employee.Department
HAVING AVG(Warehouse.Capacity) > 1000;

#Select Query with join and where clause:

SELECT Employee.EmployeeName, Location.LocationName
FROM Employee
INNER JOIN Location ON Employee.EmployeeID = Location.EmployeeID
WHERE Location.Security_Level > 3;


#Select Query with Aggregate Function:
SELECT MAX(Capacity) AS MaxCapacity FROM Warehouse;

#Select Query with Arithmetic Operators:
SELECT ProductName, ReorderQuantity * 2 AS DoubleReorderQuantity FROM Product;

#Select Query with Aggregate Function and GROUP BY Clause:
SELECT Department, COUNT(*) AS TotalEmployees FROM Employee GROUP BY Department;

#Select Query with JOIN and ORDER BY with Alias:
SELECT e.EmployeeName, l.LocationName
FROM Employee e
INNER JOIN Location l ON e.EmployeeID = l.EmployeeID
ORDER BY e.EmployeeName;

#Select Query with Subquery and IN Clause:
SELECT * FROM Product WHERE ProductID IN (SELECT ProductID FROM OrderDetail WHERE OrderQuantity > 5);

#Select Query with JOIN and Multiple Conditions:
SELECT *
FROM OrderDetail
INNER JOIN DeliveryDetail ON OrderDetail.OrderDetailID = DeliveryDetail.DeliveryDetailID
WHERE DeliveryStatus = 'Delivered' AND DeliveryMethod = 'Ground Shipping';

#Select Query with LEFT JOIN:
SELECT Product.ProductName, OrderDetail.OrderQuantity
FROM Product
LEFT JOIN OrderDetail ON Product.ProductID = OrderDetail.ProductID;


#Select Query with RIGHT JOIN:
SELECT Supplier.Supplier_Name, Product.ProductName
FROM Supplier
RIGHT JOIN Product ON Supplier.Supplier_ID = Product.ProductID;


#Creating a View:
CREATE VIEW ProductDetails AS
SELECT ProductID, ProductName, ProductCategory, ProductDescription
FROM Product;

select * from ProductDetails;



#Using Aggregate Functions with Views
CREATE VIEW EmployeeStats AS
SELECT Department, COUNT(*) AS TotalEmployees, AVG(Security_Level) AS AvgSecurityLevel
FROM Employee,Location
GROUP BY Department;

select * from EmployeeStats;


#Joining a Table with a View:
SELECT Employee.EmployeeName, EmployeeStats.TotalEmployees
FROM Employee
INNER JOIN EmployeeStats ON Employee.Department = EmployeeStats.Department;


#Adding a foriegn Key
ALTER TABLE DeliveryDetail
ADD COLUMN CustomerID INT,
ADD CONSTRAINT fk_CustomerID
FOREIGN KEY (CustomerID)
REFERENCES Customer(CustomerID);


#Adding a New Column:
ALTER TABLE Product
ADD COLUMN SupplierID INT;

SELECT * FROM Product;


UPDATE Product
SET ProductDescription = 'High-performance laptop with SSD storage and long battery life'
WHERE ProductID = 1;

select * from Product;


#Update Query with Subquery in WHERE Clause:
UPDATE Warehouse
SET Capacity = Capacity + 200
WHERE LocationID IN (SELECT LocationID FROM Location WHERE Security_Level > 3);

select * from Warehouse;


