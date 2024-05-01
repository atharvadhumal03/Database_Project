CREATE DATABASE IF NOT EXISTS hyde_travel_db; 

USE hyde_travel_db; 

CREATE TABLE Customers
(
	Cust_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL, 
    Last_Name VARCHAR(50) NOT NULL
);

CREATE TABLE Trips
(
	Trip_ID INT PRIMARY KEY AUTO_INCREMENT, 
    Trip_Type VARCHAR(50) NOT NULL
); 

CREATE TABLE Vessels
(
	Vessel_ID INT PRIMARY KEY AUTO_INCREMENT, 
    Vessel_Name VARCHAR(50) NOT NULL, 
    Vessel_Type VARCHAR(50) NOT NULL 
);

CREATE TABLE Components
(
	Component_Code VARCHAR(10) PRIMARY KEY, 
    Component_Details VARCHAR(255) NOT NULL
);

CREATE TABLE Bookings
(
	Booking_ID INT PRIMARY KEY AUTO_INCREMENT, 
    Cust_ID INT NOT NULL,
    Trip_ID INT NOT NULL, 
    Booking_Date DATE NOT NULL, 
    Passengers INT NOT NULL,
    
    FOREIGN KEY fk_Bookings_Customers (Cust_ID)
		REFERENCES Customers (Cust_ID),
	
    FOREIGN KEY fk_Bookings_Trips (Trip_ID)
		REFERENCES Trips (Trip_ID)
);

CREATE TABLE Places
(
	Place_ID INT PRIMARY KEY AUTO_INCREMENT, 
    Place_Name VARCHAR(25) NOT NULL
);

CREATE TABLE PlaceComponent
(
	Component_Code VARCHAR(10) NOT NULL, 
    Place_ID INT NOT NULL, 
    
    PRIMARY KEY (Component_Code, Place_ID),
    
    FOREIGN KEY fk_PlaceComponent_Components (Component_Code)
		REFERENCES Components (Component_Code), 
        
	FOREIGN KEY fk_PlaceComponent_Places(Place_ID)
		REFERENCES Places (Place_ID)
);

CREATE TABLE VesselComponent
(
	Vessel_ID INT NOT NULL, 
    Component_Code VARCHAR(10) NOT NULL,
    
    PRIMARY KEY (Vessel_ID, Component_Code),
    
    FOREIGN KEY fk_VesselComponent_Vessels (Vessel_ID)
		REFERENCES Vessels (Vessel_ID), 
	
    FOREIGN KEY fk_VesselComponent_Components (Component_Code)
		REFERENCES Components (Component_Code)
    
);

CREATE TABLE TripComponent
(
	Trip_ID INT, 
    Component_Code VARCHAR(10), 
    Trip_Date DATE, 
    
    PRIMARY KEY (Trip_ID, Component_Code), 
    
    FOREIGN KEY fk_TripComponent_Trips (Trip_ID)
		REFERENCES Trips (Trip_ID), 
	
    FOREIGN KEY fk_TripComponent_Components (Component_Code)
		REFERENCES Components (Component_Code)
);