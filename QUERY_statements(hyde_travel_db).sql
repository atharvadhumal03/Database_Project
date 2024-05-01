USE hyde_travel_db;

-- Show all customers and their bookings
SELECT First_Name, Last_Name, Booking_ID, Booking_Date, Trip_ID, Passengers 
FROM Customers C
JOIN Bookings B ON C.Cust_ID = B.Cust_ID
ORDER BY Trip_ID;

-- Show the components for all trips
SELECT Trip_ID, GROUP_CONCAT(Component_Code) AS Component_Code
FROM TripComponent
GROUP BY Trip_ID;

-- Show all the places that customer Colin Robinson will visit
SELECT DISTINCT Place_Name AS Places
FROM Places p
JOIN PlaceComponent pc ON p.Place_ID = pc.Place_ID
JOIN TripComponent tc ON pc.Component_Code = tc.Component_Code 
JOIN Bookings b ON tc.Trip_ID = b.Trip_ID
JOIN Customers c ON b.Cust_ID = c.Cust_ID 
WHERE First_Name = 'Colin' AND Last_Name = 'Robinson'; 

-- Show all the customers who have booked trips involving the MS Serenity 
SELECT DISTINCT First_Name, Last_Name 
FROM Customers c
JOIN Bookings b ON c.Cust_ID = b.Cust_ID 
JOIN TripComponent tc ON b.Trip_ID = tc.Trip_ID
JOIN VesselComponent vc ON tc.Component_Code = vc.Component_Code 
JOIN Vessels v ON vc.Vessel_ID = v.Vessel_ID
WHERE Vessel_Name = 'MS Serenity';

-- Show all the places that will be visited on 2nd June 2022
SELECT Place_Name AS Places
FROM Places p
JOIN PlaceComponent pc ON p.Place_ID = pc.Place_ID
JOIN TripComponent tc ON pc.Component_Code = tc.Component_Code 
WHERE Trip_Date = '2022-06-02';

-- Show all the places that are visted by the Standard Coach
SELECT DISTINCT Place_Name AS Places
FROM Places p
JOIN PlaceComponent pc ON p.Place_ID = pc.Place_ID 
JOIN VesselComponent vc ON pc.Component_Code = vc.Component_Code 
JOIN Vessels v ON vc.Vessel_ID = v.Vessel_ID 
WHERE Vessel_Name = 'Standard Coach';

-- Show all the bookings that are for less than 3 passengers 
SELECT * 
FROM Bookings
WHERE Passengers < 3;

-- Show how many components MS Serenity will be used for in June 303 
SELECT COUNT(vc.Component_Code) AS 'Number of Components'
FROM Vessels v
JOIN VesselComponent vc ON v.Vessel_ID = vc.Vessel_ID 
JOIN TripComponent tc ON vc.Component_Code = tc.Component_Code 
WHERE Vessel_Name = 'MS Serenity' AND (Trip_Date BETWEEN '2022-06-01' AND '2022-06-30');





