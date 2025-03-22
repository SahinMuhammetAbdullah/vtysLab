CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(255),
    BirthDate DATE,
    Salary DECIMAL(10,2),
    IsActive BIT NOT NULL
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255),
    Budget MONEY,
    CreatedDate DATETIME,
    IsRemote CHAR(1) NOT NULL
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Price FLOAT,
    ReleaseDate DATETIME,
    InStock BIT NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    Email VARCHAR(255),
    DateRegistered DATE,
    CreditLimit MONEY,
    IsPreferred BIT NOT NULL
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATETIME,
    CustomerID INT,
    TotalAmount DECIMAL(10,2),
    IsShipped BIT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
