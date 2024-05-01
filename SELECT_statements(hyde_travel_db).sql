USE hyde_travel_db;

SELECT * 
FROM Customers 
ORDER BY Cust_ID; 

SELECT * 
FROM Trips 
ORDER BY Trip_ID; 

SELECT * 
FROM Vessels
ORDER BY Vessel_ID; 

SELECT * 
FROM Components 
ORDER BY Component_Code;

SELECT * 
FROM Bookings
ORDER BY Booking_ID; 

SELECT * 
FROM Places 
ORDER BY Place_ID; 

SELECT Place_ID, Component_Code
FROM PlaceComponent
ORDER BY Place_ID, Component_Code;

SELECT * 
FROM VesselComponent
ORDER BY Vessel_ID, Component_Code;

SELECT * 
FROM TripComponent
ORDER BY Trip_ID, Component_Code;