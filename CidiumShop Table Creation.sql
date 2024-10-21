USE CidiumShop;

CREATE Table StoreLocations(
	locationID INT AUTO_INCREMENT Primary Key,
	locationName VARCHAR(255),
    goldStorage INT4
);

CREATE Table Inventory(
	inventoryItemID INT AUTO_INCREMENT Primary key,
	itemName VARCHAR(255),
    price INT4,
	rarity VARCHAR(255),
	quantity INT,
    locationID INT,
	Foreign key Inventory(locationID) references StoreLocations(locationID)
);
CREATE Table Employees(
	employeeID INT AUTO_INCREMENT Primary Key,
	familyName VARCHAR(255),
    playerName VARCHAR(255),
    hireDate DATE,
    locationID INT,
    Foreign key Employees(locationID) references StoreLocations(locationID)
);

CREATE Table Customers(
	customerID INT AUTO_INCREMENT Primary Key,
    familyName VARCHAR(255),
    playerName VARCHAR(255)
);

CREATE Table Transactions(
	transactionID INT auto_increment Primary Key,
    customerID INT,
    employeeID INT,
    inventoryItemID INT,
    quantity INT,
    sell bool,
    Foreign key Transactions(customerID) references Customers(customerID),
    Foreign key Transactions(employeeID) references Employees(employeeID),
    Foreign key Transactions(inventoryItemID) references Inventory(inventoryItem)
);


