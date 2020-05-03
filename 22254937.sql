#Table structure for 'Customer' Table:
create table Customer(
Customer_Phone_Number int not null,
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Street_Number int not null,
Street_Name varchar(20) not null,
Suburb varchar(20) not null,
Postcode int not null,
Account_Info enum('Cash','Card') not null,
Primary Key(Customer_Phone_Number));

#Table structure for 'Pizza' Table:
create table Pizza(
PizzaID int not null,
Size enum('Small','Medium','Large') not null,
Price decimal(5,2) not null,
Discount decimal(4,2) not null,
Crust_Type enum('Thick','Thin'),
IngredientsID int not null,
Primary Key(PizzaID));

#Table structure for 'Ingredients' Table:
create table Ingredients(
IngredientsID int not null auto_increment,
Ingredients_Name varchar(35) not null,
Cost_Price decimal (5,2) not null,
Retail_Price decimal (5,2) not null,
SupplierID int not null,
Primary Key(IngredientsID));

#Table structure for 'Employee' Table:
create table Employee(
EmployeeID int not null auto_increment,
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Base_Salary int not null,
Street_Number int not null,
Street_Name varchar(35) not null,
Suburb varchar(20) not null,
Postcode int not null,
Primary Key(EmployeeID));

#Query structure for altering 'Customer' table:
alter table Customer modify column Street_Name varchar(35);

#Table structure for 'Extra_Items' Table:
create table Extra_Items(
Product_Code int not null,
Product_Name varchar(20) not null,
Price decimal (4,2) not null,
Supplier_ID int not null,
Manufacturer varchar(35) not null,
Primary Key(Product_Code));

#Table structure for 'Orders' Table:
Create table Orders(
Order_ID int not null auto_increment,
Order_Time time not null,
Primary Key(Order_ID));

#Table structure for 'Cook' Table:
Create table Cook(
EmployeeID int not null,
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Primary Key(EmployeeID));

#Table structure for 'Driver' Table:
Create table Driver(
EmployeeID int not null,
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Primary Key(EmployeeID));

#Query structure for inserting values into 'Customer' table:
insert into Customer values(0423897677, 'John', 'Alex', 12, 'Alfie Street', 'Redhill', 7878, 'Cash');
insert into Customer values(0424189421, 'Bobby', 'James', 44, 'Waltz Road', 'Liverpool', 6798, 'Card');
insert into Customer values(0421456468, 'Jason', 'Terry', 21, 'Fix Way', 'Hume', 1789, 'Card');
insert into Customer values(0457219308, 'Tom', 'Wall', 2, '3rd Street', 'Lancer', 5467, 'Cash');
insert into Customer values(0456329356, 'Archi', 'Ron', 45, 'Waltz Road', 'Liverpool', 6798, 'Card');
insert into Customer values(0457834923, 'Paul', 'Ted', 34, 'Fez Street', 'Greytown', 7832, 'Cash');
insert into Customer values(0458923535, 'Sam', 'Edward', 3, 'Pool Street', 'Teaville', 4553, 'Cash');
insert into Customer values(0421378213, 'Tim', 'Burt', 21, 'Hord Road', 'Chelten', 6758, 'Cash');
insert into Customer values(0431893473, 'James', 'Word', 6, 'Riley Way', 'Morley', 2314, 'Card');
insert into Customer values(0445234894, 'Steven', 'Frank', 8, 'Ispwich Road', 'Grenland', 4543, 'Card');

#Query structure for altering 'Pizza' and 'Ingredients' table:
alter table Pizza drop IngredientsID;
alter table Ingredients add column PizzaID int not null after SupplierID;
alter table Pizza add column Pizza_Name varchar(35) after PizzaID;

#Query structure for inserting values into 'Pizza' table:
insert into Pizza values(1, 'Chicken', 'Small', 10.50, 9.50, 'Thick');
insert into Pizza values(2, 'Beef', 'Medium', 11.50, 10.50, 'Thin');
insert into Pizza values(3, 'Pork', 'Medium', 11.50, 10.00, 'Thick');
insert into Pizza values(4, 'Vegetarian', 'Small', 8.50, 7.00, 'Thin');
insert into Pizza values(5, 'Chicken', 'Medium', 11.00, 10.00, 'Thick');
insert into Pizza values(6, 'Cheese', 'Medium', 10.00, 9.00, 'Thick');
insert into Pizza values(7, 'Beef', 'Large', 13.50, 12.50, 'Thin');
insert into Pizza values(8, 'Pork', 'Large', 12.50, 11.50, 'Thick');
insert into Pizza values(9, 'Vegetarian', 'Medium', 9.50, 8.50, 'Thin');
insert into Pizza values(10, 'Cheese', 'Large', 11.00, 10.00, 'Thick');

#Query structure for inserting values into 'Ingredients' table:
insert into Ingredients values(1, 'Chicken meat', 4.50, 6.00, 001, 1);
insert into Ingredients values(2, 'Beef meat', 4.90, 5.90, 001, 2);
insert into Ingredients values(3, 'Pork meat', 4.75, 5.50, 001, 3);
insert into Ingredients values(4, 'Mushrooms', 3.00, 3.50, 002, 4);
insert into Ingredients values(5, 'Chicken meat', 5.50, 6.50, 001, 5);
insert into Ingredients values(6, 'Cheddar', 3.50, 4.00, 003, 6);
insert into Ingredients values(7, 'Beef meat', 5.90, 6.90, 001, 7);
insert into Ingredients values(8, 'Pork Meat', 5.75, 6.50, 001, 8);
insert into Ingredients values(9, 'Mushrooms', 4.00, 4.50, 002, 9);
insert into Ingredients values(10, 'Cheddar', 4.50, 5.00, 003, 10);

#Query structure for inserting values into 'Employee' table:
insert into Employee values(101, 'Mo', 'Ramos', 4000, 4, 'Flora Way', 'Liverpool', 6798);
insert into Employee values(102, 'Sergio', 'Silva', 4000, 16, 'City Road', 'Hume', 1789);
insert into Employee values(103, 'David', 'Alisson', 4500, 8, 'Melwood Street', 'Lancer', 5467);
insert into Employee values(104, 'Luka', 'Modric', 4300, 19, 'Croat Steet', 'Lancer', 5467);
insert into Employee values(105, 'Cris', 'Ronald', 3900, 18, 'Read Way', 'Greytown', 7832);
insert into Employee values(106, 'Karim', 'Ben', 3800, 12, 'Koll Road', 'Teaville', 4553);
insert into Employee values(107, 'Sad', 'Mane', 4150, 26, 'Kirkby Road', 'Hume', 1789);
insert into Employee values(108, 'Dan', 'Studge', 4400, 24, 'Tent Way', 'Chelten', 6578);
insert into Employee values(109, 'Jordan', 'Hendo', 4100, 21, 'Rex Way', 'Morley', 2314);
insert into Employee values(110, 'Gini', 'Naby', 4200, 33, 'Swam Road', 'Grenland', 4543);

#Query structure for inserting values into 'Extra_Items' table:
insert into Extra_Items values(201, 'Fries', 3.50, 004, 'Alpha Manufacturing');
insert into Extra_Items values(202, 'Nuggets', 3.30, 004, 'Alpha Manufacturing');
insert into Extra_Items values(203, 'Chicken wings', 5.00, 005, 'Beta Manufacturing');
insert into Extra_Items values(204, 'Chocolate Cake', 4.50, 006, 'Cake shop'); 
insert into Extra_Items values(205, 'Butter Cake', 4.00, 006, 'Cake Shop');
insert into Extra_Items values(206, 'Apple Juice', 3.00, 007, 'Drinks Shop');
insert into Extra_Items values(207, 'Orange Juice', 3.00, 007, 'Drinks Shop');
insert into Extra_Items values(208, 'Tea', 3.10, 008, 'Lipton Tea');
insert into Extra_Items values(209, 'Coffee', 3.40, 009, 'Nescafe');
insert into Extra_Items values(210, 'Water', 2.90, 010, 'Bottled Water Company');

#Query structure for altering 'Orders' table:
alter table Orders add column PizzaID int not null after Order_Time;
alter table Orders add column Product_Code int not null after PizzaID;
alter table Orders add column Total_Cost decimal(5,2) not null after Product_Code;
alter table Orders modify column Order_Time datetime;
alter table Orders modify column Order_Time time not null;
alter table Orders add column Customer int not null after Order_Time;
alter table Orders add column IngredientsID int not null after Product_Code;

#Query structre for inserting values into 'Orders' table:
insert into Orders values(301, '13:24:21', 0423897677, 1, 206, 1, 12.50);
insert into Orders values(302, '13:45:36', 0421456468, 3, 208, 3, 13.10);
insert into Orders values(303, '13:54:18', 0457219308, 6, 204, 6, 13.50);
insert into Orders values(304, '14:25:22', 0421378213, 7, 203, 7, 17.50);
insert into Orders values(305, '14:34:21', 0445234894, 8, 201, 8, 15.00);
insert into Orders values(306, '15:03:12', 0423897677, 10, 203, 10, 15.00);
insert into Orders values(307, '15:36:56', 0431893473, 5, 201, 5, 13.50);
insert into Orders values(308, '15:41:33', 0424189421, 4, 203, 4, 12.00);
insert into Orders values(309, '15:52:42', 0423897677, 6, 209, 6, 13.40);
insert into Orders values(310, '16:10:23', 0424189421, 7, 207, 7, 16.50);

#Query structure for altering 'Cook' table:
alter table cook add column Num_Pizza_Made int not null after Last_Name;

#Query structure for inserting values into 'Cook' table:
insert into Cook values(101, 'Mo', 'Ramos', 3);
insert into Cook values(103, 'David', 'Alisson', 1);
insert into Cook values(105, 'Cris', 'Ronald', 1);
insert into Cook values(106, 'Karim', 'Ben', 2);
insert into Cook values(107, 'Sad', 'Mane', 1);
Insert into Cook values(110, 'Gini', 'Naby', 2);

#Query structure for altering 'Driver' table:
alter table driver add column Num_Orders_Delivered int not null after Last_Name;

#Query structure for inserting values into 'Driver' table:
insert into Driver values(102, 'Sergio', 'Silva',1);
insert into Driver values(104, 'Luka', 'Modric',2);
insert into Driver values(106, 'Karim', 'Ben',2);
insert into Driver values(108, 'Dan', 'Studge',2);
insert into Driver values(109, 'Jordan', 'Hendo',3);

#Task 3A:
select * 
from employee 
where EmployeeID=(select EmployeeID 
from Cook c join Driver d using (EmployeeID));

#Task 3B:
select cu.Suburb, sum(o.Total_Cost) as Revenue
from Customer cu, Orders o
where cu.Customer_Phone_Number=o.Customer
group by cu.suburb
order by Revenue desc;

#Task3C:
drop procedure if exists SuburbBestCustomer;
delimiter ++
create procedure SuburbBestCustomer(cust int)
begin
	select c.Customer_Phone_Number, c.First_Name, c.Last_Name, c.Suburb, sum(o.Total_Cost) as Amount_Spent
	from Customer c join Orders o
	on c.Customer_Phone_Number=o.Customer
	group by c.Customer_Phone_Number
	order by Amount_Spent desc;
end ++
delimiter ;

call SuburbBestCustomer(423897677);
call SuburbBestCustomer(445234894);

#Task 3D:
select i.IngredientsID, i.Ingredients_Name
from Ingredients i
where i.IngredientsID not in(select o.IngredientsID from orders o);

#Task3E:
drop view if exists EmployeeSalary_Cooks;
create view EmployeeSalary_Cooks as 
select e.EmployeeID, e.Base_Salary, sum(2*c.Num_Pizza_Made) as Income, sum(Base_salary+2*c.Num_Pizza_Made) as Total_Income
from employee e join cook c
on e.EmployeeID=c.EmployeeID
group by e.EmployeeID;

drop view if exists EmployeeSalary_Drivers;
create view EmployeeSalary_Drivers as
select e.EmployeeID, e.Base_Salary, sum(2*d.Num_Orders_Delivered) as Income, sum(Base_salary+2*d.Num_Orders_Delivered) as Total_Income
from employee e join driver d
on e.EmployeeID=d.EmployeeID
group by e.EmployeeID;

drop view if exists EmployeeSalary;
create view EmployeeSalary as
select * from employeesalary_cooks
union all
select * from employeesalary_drivers
order by employeeID desc;

#Task3F:
select i.IngredientsID, sum(o.IngredientsID*i.Retail_Price) as Revenue_Of_Ingredients
from Ingredients I join Orders o on i.IngredientsID=o.IngredientsID
group by i.IngredientsID order by Revenue_Of_Ingredients desc;
