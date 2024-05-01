USE hyde_travel_db; 

INSERT INTO Customers (First_Name, Last_Name)
VALUES ('Johnny', 'Johnson'), ('Amanda', 'Brown'), 
       ('Talal', 'Khan'), ('Pretti', 'Patel'), 
       ('Dave', 'Smith'), ('Colin', 'Robinson');
       
INSERT INTO Trips
VALUES (101, 'Rhine Cruise'), 
       (102, 'Rhine Cruise'),
       (103, 'Apple Orchard Tour'); 
   
INSERT INTO Vessels (Vessel_Name, Vessel_Type)
VALUES ('Deluxe Coach', 'Coach'), ('Eurostar', 'Train'), 
       ('MS Serenity', 'River Ship'), ('MS Eddie', 'Rivership'), 
       ('Standard Coach', 'Coach'), ('MS Sophie', 'Rivership'); 
       
INSERT INTO Components
VALUES ('C2', 'Cruise from Konigswinter to Koblenz'), 
	   ('C3', 'Cruise from Koblenz to Zell'), 
       ('C5', 'Coach travel from Zell to Cologne'), 
       ('C10', 'City break Koblenz'), 
       ('C11', 'Cruise Koblenz to Cologne'), 
       ('C22', 'Calais to Amiens'), 
       ('C23', 'Apple Orchard Tour (Starts and ends in Amiens)'), 
       ('C25', 'River Somme Cruise'), 
       ('COUT', 'Folkestone to Cologne via Eurotunnel Railway and then Cruise to Konigswinter'),
       ('COUT2', 'Folkestone to Calais via Eurotunnel Railway'), 
       ('CRET', 'Cologne to Folkestone via Eurotunnel Railway'), 
       ('CRET2', 'Calais to Folkestone via Eurotunnel Railway'); 
       
INSERT INTO Bookings 
VALUES (43343, 1, 101, '2022-04-01', 4), (43389, 2, 101, '2022-05-03', 1), 
       (43399, 3, 101, '2022-05-05', 2), (43350, 4, 102, '2022-05-06', 2), 
       (43353, 5, 103, '2022-05-07', 7), (43367, 6, 102, '2022-05-07', 5); 
       
INSERT INTO Places (Place_Name)
VALUES ('Folkestone'), ('Cologne'), ('Konigswinter'),
	   ('Koblenz'), ('Zell'), ('Calais'), ('Amiens');	

INSERT INTO PlaceComponent(Component_Code, Place_ID)
VALUES ('COUT', 1), ('COUT', 2), ('COUT', 3), ('C2', 3),
       ('C2', 4), ('C3', 4), ('C3', 5), ('C5', 5), ('C5', 2), 
       ('C10', 4), ('C11', 4), ('C11', 2), ('C22', 6), ('C22', 7), 
       ('C23', 7), ('CRET', 2), ('CRET', 1), ('COUT2', 1), ('COUT2', 6), 
       ('CRET2', 6), ('CRET2', 1); 
       
INSERT INTO VesselComponent
VALUES (1, 'COUT'), (2, 'COUT'), (1, 'CRET'),
       (2, 'CRET'), (3, 'C2'), (3, 'C3'), 
	   (4, 'C11'), (5, 'C5'), (1, 'COUT2'), 
       (2, 'COUT2'), (5, 'C22'), (5, 'C23'),
       (6, 'C25'), (1, 'CRET2'), (2, 'CRET2');
       
INSERT INTO TripComponent
VALUES (101, 'COUT', '2022-06-01'), (101, 'C2', '2022-06-02'), 
       (101, 'C3', '2022-06-03'),   (101, 'C5', '2022-06-04'), 
       (101, 'CRET', '2022-06-05'), (102, 'COUT', '2022-06-22'), 
       (102, 'C2', '2022-06-23'),   (102, 'C10', '2022-06-23'),
       (102, 'C11', '2022-06-26'),  (102, 'CRET', '2022-06-27'), 
       (103, 'COUT2', '2022-06-01'),(103, 'C22', '2022-06-02'), 
       (103, 'C23', '2022-06-03'),  (103, 'C25', '2022-06-04'), 
       (103, 'CRET2', '2022-06-05'); 
        
       
        
       
       
        
        
        
        
       
        


