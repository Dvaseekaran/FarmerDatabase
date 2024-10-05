create table Farm(
FarmID int primary key,
Farmname varchar(99),
Location varchar(99),
Farmsize decimal(10,2)
);
create table crop(
Crop_ProductID int primary key,
CropName varchar(100),
PlantingDate DATE,
HarvestDate DATE,
FarmID int,
foreign key (FarmID) references Farm(FarmID)
);
create table LiveStock(
Live_ProductId int primary key,
AnimalType varchar(100),
Quantity int,
FarmID int,
EntryDate date,
foreign key (FarmID) references Farm(FarmID)
);
create table Machinery (
MachineID int primary key,
MachineName varchar(99),
PurchaseDate Date,
Status varchar(66),
FarmID int,
foreign key (FarmID) references Farm(FarmID)
);
create table Employees (
EmployeeID int primary key ,
FirstName varchar(99),
LastName varchar(99),
JobRole varchar(99),
HireDate Date ,
Salary Decimal(10,2),
FarmID int ,
Foreign key (FarmID) references Farm(FarmID) 
);
create table Suppliers (
SupplierID int primary key ,
SupplierName Varchar(99),
ContactInfo varchar(99),
SupplyType varchar(99)
);
create table Sales (
SaleID int primary key,
ProductType varchar(99),
ProductID int,
Quantity int,
SaleDate date,
SalePrice decimal(10,2),
foreign key (ProductID) references crop (Crop_ProductID),
foreign key (productID) references Livestock (Live_productID)
);
create table Expenses (
ExpenseID int primary key,
ExpenseType varchar(100),
Amount Decimal(10,2),
ExpenseDate Date,
FarmID int,
foreign key (FarmID) references Farm(FarmID)
);
create table Weather (
WeatherID int primary key ,
FarmID int,
Date date,
Temperature decimal(5,2),
Rainfall decimal(5,2),
foreign key (FarmID) references Farm(FarmID)
);

INSERT INTO Farm (FarmID, Farmname, Location, Farmsize) VALUES
(1, 'Green Valley', 'Tamil Nadu', 120.50),
(2, 'Sunshine Farm', 'Punjab', 80.75),
(3, 'Riverbank Estate', 'Kerala', 95.40),
(4, 'Mountain Peak Farm', 'Uttarakhand', 150.25),
(5, 'Golden Harvest', 'Maharashtra', 110.00),
(6, 'Coastal Breeze', 'Goa', 60.90),
(7, 'Highland Farms', 'Meghalaya', 200.00),
(8, 'Palm Grove', 'Andhra Pradesh', 90.50),
(9, 'Silver Oak', 'Karnataka', 70.00),
(10, 'Desert Bloom', 'Rajasthan', 85.20),
(11, 'Sunrise Meadows', 'Gujarat', 130.45),
(12, 'Banyan Tree Farm', 'West Bengal', 100.35),
(13, 'Lotus Pond', 'Assam', 75.65),
(14, 'Evergreen Farm', 'Madhya Pradesh', 95.80),
(15, 'Harvest Moon', 'Bihar', 88.60),
(16, 'Coconut Grove', 'Tamil Nadu', 150.00),
(17, 'Cherry Blossom Farm', 'Himachal Pradesh', 50.25),
(18, 'Windy Plains', 'Haryana', 105.50),
(19, 'Mango Hill', 'Telangana', 115.20),
(20, 'Olive Orchard', 'Jammu & Kashmir', 90.30);

INSERT INTO Crop (Crop_ProductID, CropName, PlantingDate, HarvestDate, FarmID) VALUES
(1, 'Rice', '2024-01-15', '2024-05-20', 2),
(2, 'Wheat', '2023-07-10', '2023-11-15', 1),
(3, 'Tea', '2023-06-01', '2024-04-01', 5),
(4, 'Maize', '2023-09-05', '2024-01-10', 4),
(5, 'Cotton', '2023-06-25', '2024-01-20', 3),
(6, 'Tea', '2024-02-15', '2024-09-10', 7),
(7, 'Coffee', '2023-03-12', '2024-02-10', 9),
(8, 'Mustard', '2023-10-05', '2024-03-20', 10),
(9, 'Barley', '2024-01-20', '2024-06-10', 12),
(10, 'Millet', '2023-07-01', '2023-10-25', 14),
(11, 'Sunflower', '2024-03-10', '2024-08-30', 6),
(12, 'Potato', '2023-09-15', '2024-01-20', 15),
(13, 'Onion', '2023-11-01', '2024-03-15', 16),
(14, 'Tomato', '2024-02-01', '2024-05-30', 8),
(15, 'Mango', '2023-03-25', '2024-06-20', 19),
(16, 'Banana', '2023-05-10', '2024-03-05', 1),
(17, 'Peas', '2023-12-01', '2024-03-25', 11),
(18, 'Grapes', '2023-07-20', '2024-03-20', 17),
(19, 'Papaya', '2024-01-10', '2024-07-15', 13),
(20, 'Chili', '2024-02-05', '2024-06-15', 18);

INSERT INTO LiveStock (Live_ProductId, AnimalType, Quantity, FarmID, EntryDate) VALUES
(1, 'Cattle', 50, 1, '2023-01-15'),
(2, 'Goat', 80, 2, '2023-02-10'),
(3, 'Sheep', 100, 3, '2023-03-05'),
(4, 'Buffalo', 40, 4, '2023-04-20'),
(5, 'Chicken', 300, 5, '2023-05-12'),
(6, 'Duck', 120, 6, '2023-06-18'),
(7, 'Pig', 75, 7, '2023-07-25'),
(8, 'Horse', 10, 8, '2023-08-30'),
(9, 'Rabbit', 150, 9, '2023-09-15'),
(10, 'Cattle', 60, 10, '2023-10-10'),
(11, 'Goat', 95, 11, '2023-11-05'),
(12, 'Sheep', 110, 12, '2023-12-01'),
(13, 'Chicken', 250, 13, '2024-01-10'),
(14, 'Buffalo', 45, 14, '2024-02-05'),
(15, 'Duck', 130, 15, '2024-03-15'),
(16, 'Pig', 85, 16, '2024-04-20'),
(17, 'Horse', 12, 17, '2024-05-25'),
(18, 'Rabbit', 160, 18, '2024-06-15'),
(19, 'Cattle', 70, 19, '2024-07-10'),
(20, 'Goat', 90, 20, '2024-08-20');

INSERT INTO Machinery (MachineID, MachineName, PurchaseDate, Status, FarmID) VALUES
(1, 'Tractor', '2022-01-10', 'Operational', 1),
(2, 'Combine Harvester', '2021-06-15', 'Under Maintenance', 2),
(3, 'Plough', '2023-02-20', 'Operational', 3),
(4, 'Seed Drill', '2020-08-05', 'Operational', 4),
(5, 'Irrigation Pump', '2021-09-25', 'Operational', 5),
(6, 'Rotavator', '2022-03-18', 'Under Repair', 6),
(7, 'Baler', '2023-05-30', 'Operational', 7),
(8, 'Sprayer', '2021-04-10', 'Operational', 8),
(9, 'Power Tiller', '2022-07-22', 'Under Maintenance', 9),
(10, 'Threshing Machine', '2020-11-10', 'Operational', 10),
(11, 'Disc Harrow', '2022-12-05', 'Operational', 11),
(12, 'Cultivator', '2021-05-20', 'Operational', 12),
(13, 'Paddy Transplanter', '2023-04-15', 'Operational', 13),
(14, 'Ridge Plough', '2021-10-05', 'Operational', 14),
(15, 'Fertilizer Spreader', '2022-08-25', 'Operational', 15),
(16, 'Rice Mill', '2023-01-10', 'Under Repair', 16),
(17, 'Dairy Milking Machine', '2020-03-15', 'Operational', 17),
(18, 'Chaff Cutter', '2023-06-05', 'Operational', 18),
(19, 'Water Tanker', '2021-07-10', 'Operational', 19),
(20, 'Cane Crusher', '2022-09-20', 'Operational', 20);

INSERT INTO Employees (EmployeeID, FirstName, LastName, JobRole, HireDate, Salary, FarmID) VALUES
(1, 'Rahul', 'Singh', 'Farm Manager', '2022-05-15', 45000.00, 1),
(2, 'Priya', 'Kumar', 'Agronomist', '2023-01-20', 35000.00, 2),
(3, 'Suresh', 'Patel', 'Tractor Driver', '2021-07-10', 25000.00, 3),
(4, 'Aarti', 'Nair', 'Irrigation Specialist', '2023-02-18', 30000.00, 4),
(5, 'Vikram', 'Sharma', 'Livestock Manager', '2020-06-25', 40000.00, 5),
(6, 'Neha', 'Verma', 'Field Worker', '2022-08-15', 18000.00, 6),
(7, 'Ravi', 'Thakur', 'Machinery Operator', '2023-03-12', 27000.00, 7),
(8, 'Meera', 'Bose', 'Crop Supervisor', '2021-09-05', 32000.00, 8),
(9, 'Anil', 'Yadav', 'Veterinarian', '2022-10-30', 50000.00, 9),
(10, 'Rani', 'Gupta', 'Field Worker', '2023-04-22', 18000.00, 10),
(11, 'Karan', 'Singh', 'Pest Control Specialist', '2023-05-05', 28000.00, 11),
(12, 'Pooja', 'Reddy', 'Dairy Manager', '2020-11-15', 42000.00, 12),
(13, 'Deepak', 'Joshi', 'Harvest Worker', '2021-12-01', 20000.00, 13),
(14, 'Shalini', 'Desai', 'Farmhand', '2023-06-10', 19000.00, 14),
(15, 'Rajesh', 'Ghosh', 'Supply Chain Manager', '2021-01-25', 38000.00, 15),
(16, 'Sunita', 'Mehta', 'Accountant', '2022-03-08', 35000.00, 16),
(17, 'Manish', 'Bhatia', 'Farm Technician', '2022-07-01', 33000.00, 17),
(18, 'Anjali', 'Kapoor', 'Equipment Manager', '2023-09-15', 36000.00, 18),
(19, 'Amit', 'Pandey', 'Greenhouse Worker', '2021-04-10', 22000.00, 19),
(20, 'Rohit', 'Mishra', 'Quality Control Specialist', '2023-01-05', 29000.00, 20);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactInfo, SupplyType) VALUES
(1, 'AgroMart Supplies', 'agromart@contact.in', 'Fertilizers'),
(2, 'GreenLeaf Seeds', 'greenleaf@contact.in', 'Seeds'),
(3, 'FreshFarms Ltd.', 'freshfarms@contact.in', 'Livestock Feed'),
(4, 'Machinery Depot', 'machinerydepot@contact.in', 'Farm Equipment'),
(5, 'CropCare Solutions', 'cropcare@contact.in', 'Pesticides'),
(6, 'Harvest Essentials', 'harvestessentials@contact.in', 'Harvesting Tools'),
(7, 'Irrigators Hub', 'irrigators@contact.in', 'Irrigation Systems'),
(8, 'Organic Fert India', 'organicfert@contact.in', 'Organic Fertilizers'),
(9, 'GrowTech Seeds', 'growtech@contact.in', 'Hybrid Seeds'),
(10, 'Tractor World', 'tractorworld@contact.in', 'Tractors'),
(11, 'GrainPro Industries', 'grainpro@contact.in', 'Grain Storage Equipment'),
(12, 'PlantWell Nutrients', 'plantwell@contact.in', 'Plant Nutrients'),
(13, 'DairyDirect', 'dairydirect@contact.in', 'Dairy Equipment'),
(14, 'AquaFarm Tech', 'aquafarmtech@contact.in', 'Aquaculture Supplies'),
(15, 'Sunshine Agro', 'sunshine@contact.in', 'Greenhouse Equipment'),
(16, 'AgriCo Tools', 'agricotools@contact.in', 'Farm Tools'),
(17, 'PoultryPlus', 'poultryplus@contact.in', 'Poultry Supplies'),
(18, 'CropGuard', 'cropguard@contact.in', 'Crop Protection Chemicals'),
(19, 'HarvestPro Machines', 'harvestpro@contact.in', 'Harvesting Machines'),
(20, 'BioSeed Ltd.', 'bioseed@contact.in', 'Bio-engineered Seeds');

INSERT INTO Sales (SaleID, ProductType, ProductID, Quantity, SaleDate, SalePrice) VALUES
(1, 'Crop', 2, 5000, '2023-07-15', 250000.00),  
(2, 'Livestock', 1, 30, '2023-06-12', 150000.00),  
(3, 'Crop', 5, 7000, '2023-09-10', 350000.00),  
(4, 'Livestock', 4, 20, '2023-05-25', 80000.00),  
(5, 'Crop', 8, 1500, '2023-10-05', 180000.00),  
(6, 'Livestock', 7, 40, '2023-03-15', 70000.00),  
(7, 'Crop', 10, 6000, '2024-01-08', 210000.00),  
(8, 'Livestock', 6, 60, '2023-08-20', 55000.00),  
(9, 'Crop', 11, 4000, '2023-11-22', 120000.00),  
(10, 'Livestock', 9, 200, '2024-02-05', 90000.00),  
(11, 'Crop', 3, 3500, '2024-03-12', 300000.00),  
(12, 'Livestock', 10, 40, '2023-12-18', 140000.00),  
(13, 'Crop', 15, 1200, '2023-06-25', 450000.00),  
(14, 'Livestock', 3, 60, '2023-07-01', 200000.00),  
(15, 'Crop', 13, 2000, '2024-04-14', 70000.00),  
(16, 'Livestock', 2, 50, '2024-01-22', 100000.00),  
(17, 'Crop', 6, 500, '2024-02-10', 250000.00),  
(18, 'Livestock', 5, 100, '2024-03-30', 180000.00),
(19, 'Crop', 9, 3500, '2023-05-17', 220000.00),  
(20, 'Livestock', 8, 10, '2023-09-22', 50000.00); 

INSERT INTO Expenses (ExpenseID, ExpenseType, Amount, ExpenseDate, FarmID) VALUES
(1, 'Fertilizer Purchase', 45000.00, '2023-02-10', 1),
(2, 'Livestock Feed', 12000.00, '2023-03-15', 2),
(3, 'Machinery Maintenance', 25000.00, '2023-05-05', 3),
(4, 'Labor Wages', 80000.00, '2023-06-01', 4),
(5, 'Seed Purchase', 15000.00, '2023-07-10', 5),
(6, 'Water Irrigation', 12000.00, '2023-08-20', 6),
(7, 'Pesticides', 18000.00, '2023-09-25', 7),
(8, 'Electricity Bill', 10000.00, '2023-10-12', 8),
(9, 'Harvesting Tools', 25000.00, '2023-11-18', 9),
(10, 'Fuel for Machinery', 18000.00, '2023-12-02', 10),
(11, 'Greenhouse Maintenance', 30000.00, '2024-01-05', 11),
(12, 'Transportation Costs', 20000.00, '2024-01-20', 12),
(13, 'Veterinary Services', 15000.00, '2024-02-10', 13),
(14, 'Equipment Purchase', 40000.00, '2024-03-01', 14),
(15, 'Farm Insurance', 25000.00, '2024-04-15', 15),
(16, 'Seedlings Purchase', 10000.00, '2024-05-05', 16),
(17, 'Soil Testing', 8000.00, '2024-06-20', 17),
(18, 'Pest Control Services', 20000.00, '2024-07-10', 18),
(19, 'Packaging Materials', 15000.00, '2024-08-05', 19),
(20, 'Training for Workers', 12000.00, '2024-09-12', 20);

INSERT INTO Weather (WeatherID, FarmID, Date, Temperature, Rainfall) VALUES
(1, 1, '2023-07-01', 30.50, 12.40),
(2, 2, '2023-07-02', 29.80, 10.75),
(3, 3, '2023-07-03', 32.00, 0.00),
(4, 4, '2023-07-04', 33.20, 5.10),
(5, 5, '2023-07-05', 28.50, 20.30),
(6, 6, '2023-07-06', 31.75, 8.50),
(7, 7, '2023-07-07', 27.80, 15.60),
(8, 8, '2023-07-08', 35.00, 2.20),
(9, 9, '2023-07-09', 30.60, 12.80),
(10, 10, '2023-07-10', 29.50, 14.00),
(11, 11, '2023-07-11', 34.10, 0.00),
(12, 12, '2023-07-12', 33.70, 4.20),
(13, 13, '2023-07-13', 30.80, 18.50),
(14, 14, '2023-07-14', 28.20, 25.00),
(15, 15, '2023-07-15', 32.30, 7.60),
(16, 16, '2023-07-16', 31.00, 5.50),
(17, 17, '2023-07-17', 27.50, 30.20),
(18, 18, '2023-07-18', 29.00, 10.40),
(19, 19, '2023-07-19', 35.20, 0.00),
(20, 20, '2023-07-20', 28.75, 22.30);

-- DataBase of the project

use project_2;

-- using alter command(DDL)

alter table Farm change Farmsize Farmsize decimal(10,2);

-- using update (DML)

update Crop set CropName = 'Rice' where FarmID = 1;
update crop set cropName = 'Wheat' where FarmID = 2;

-- using select command to show all the table(DQL)

select * from farm;
select * from crop;
select * from livestock;
select * from machinery;
select * from suppliers;
select * from sales;
select * from employees;
select * from expenses;
select * from weather;

-- using stored procedure

delimiter $$
create procedure get_val1(in id varchar(100))
begin
select * from  farm
where Farmname = id;
select count(*) from farm;
select avg(Farmsize) from farm;
end$$
delimiter ;
call get_val1("Sunshine Farm");

-- Which crops are grown in Tamil Nadu farms, and what are their respective planting and harvesting dates? 

select f.farmid,f.farmname,f.location,c.plantingDate,c.harvestdate from farm as f
join crop as c on 
f.farmId = c.farmid
where f.location = "Tamil nadu";

-- What is the total number of livestock (by type) at the farm located in Kerala?

select f.farmid,f.location,L.animalType,sum(L.quantity) as totalLive from farm as f
join livestock as L on
f.farmid = L.farmid
where f.location = "kerala"
group by l.animaltype,f.farmid,f.location;

-- Which farms have made sales in both crop and livestock categories in the year 2023?

select f.farmname,c.cropname,l.animalType,s.saledate
from farm as f
join crop as c on f.farmid = c.farmid 
join livestock as l on f.farmid = l.farmid
join sales as s on c.crop_productID = s.productid
where year(s.saledate) = '2023';

-- What are the total expenses incurred by all farms in Maharashtra in 2023?

select f.farmid,f.farmname,f.location,sum(e.amount) as totalExpenses
from farm as f
join expenses as e on 
f.farmid = e.farmid
where f.location = "Maharashtra"
group by f.location,f.farmid,f.farmname;

-- What is the average temperature and rainfall for the farms in Gujarat in the month of July 2023?

select f.location,avg(w.temperature) as avgtemp ,sum(w.rainfall) as total_rain
from farm as f
join weather as w on
f.farmid = w.farmid
where f.location = "Gujarat" and
year(w.date) = '2023' and monthname(w.date) = 'july'
group by  f.location;
 
 -- Which suppliers provided farm equipment, and how can they be contacted?
 
 select * from suppliers 
 where supplyType = "Farm Equipment";
 
 -- List the employees who were hired after January 2023 and their respective job roles across all farms.
 select EmployeeID,FirstName,LastName,jobRole,HireDate 
 from employees  where hireDate > '2023-01-31';
 
 -- Write a query to identify farms whose total revenue from crop sales is greater than the average revenue of all farms.
 
 SELECT farmid, farmname, total_revenue
FROM (
    SELECT f.farmid, f.farmname, SUM(s.saleprice * s.quantity) AS total_revenue
    FROM farm f
    JOIN crop c ON f.farmid = c.farmid
    JOIN sales s ON c.crop_productid = s.productid  
    GROUP BY f.farmid, f.farmname
) AS farm_revenue
WHERE total_revenue > (
    SELECT AVG(total_revenue)
    FROM (
        SELECT SUM(s.saleprice * s.quantity) AS total_revenue
        FROM farm f
        JOIN crop c ON f.farmid = c.farmid
        JOIN sales s ON c.crop_productid = s.productID
        GROUP BY f.farmid
    ) AS average_revenue
);
-- List all farms, showing the total sales for each farm and rank the farms based on their total sales in descending order?

WITH FarmSales AS (
    SELECT 
        Farm.FarmID,
        Farm.Farmname,
        Sales.ProductType,
        SUM(Sales.SalePrice) AS TotalSalesPerFarm
    FROM 
        Farm
    JOIN 
        Sales ON Farm.FarmID = Sales.SaleID
    GROUP BY 
        Farm.FarmID, Farm.Farmname, Sales.ProductType
)
SELECT
    FarmSales.FarmID,
    FarmSales.Farmname,
    FarmSales.ProductType,
    FarmSales.TotalSalesPerFarm,
    RANK() OVER (ORDER BY FarmSales.TotalSalesPerFarm DESC) AS FarmSalesRank
FROM 
    FarmSales
ORDER BY 
    FarmSalesRank;
    
--  Createing view to stored query

CREATE VIEW FarmSalesRanking AS
WITH SalesData AS (
    SELECT 
        Farm.FarmID,Farm.Farmname,
        Sales.ProductType,Sales.SalePrice,
        SUM(Sales.SalePrice) OVER (PARTITION BY Farm.FarmID) AS TotalSalesPerFarm
    FROM 
        Farm
    JOIN 
        Sales ON Farm.FarmID = Sales.SaleID
)
SELECT 
    FarmID,Farmname,ProductType,
    SalePrice,TotalSalesPerFarm,
    RANK() OVER (ORDER BY TotalSalesPerFarm DESC) AS FarmSalesRank
FROM 
    SalesData;
 -- accessing the view
SELECT * FROM FarmSalesRanking;
