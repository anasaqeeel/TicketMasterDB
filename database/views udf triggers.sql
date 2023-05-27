--update the price of a route in the Price table when the distance of the route is updated.

CREATE TRIGGER update_price
ON Price
AFTER UPDATE
AS
BEGIN
   UPDATE Price
   SET price = CASE 
                  WHEN distance < 100 THEN 1200
                  WHEN distance >= 100 AND distance < 200 THEN 1500
                  WHEN distance >= 200 AND distance < 300 THEN 2000
                  WHEN distance >= 300 AND distance < 400 THEN 2500
                  WHEN distance >= 400 AND distance < 500 THEN 3000
                  WHEN distance >= 500 AND distance < 600 THEN 3500
                  ELSE 5000
               END
   FROM inserted i
   WHERE Price.from_location = i.from_location 
   AND Price.to_location = i.to_location 
END

--insert a new row in the Time table when a new route is added to the Routes table.

CREATE TRIGGER insert_time
ON Routes
AFTER INSERT
AS
BEGIN
   INSERT INTO Time (from_location, name, time, to_location)
   SELECT inserted.from_location, inserted.name, '00:00:00', inserted.to_location
   FROM inserted
END


--views

CREATE VIEW vehicle_revenue
AS
SELECT p.vehicle_name, SUM(p.price) AS total_revenue
FROM price p
GROUP BY p.vehicle_name
--total revenue by vehicle:

CREATE VIEW vehicle_revenue
AS
SELECT p.vehicle_name, SUM(p.price) AS total_revenue
FROM price p
GROUP BY p.vehicle_name

--dist b/w 2 location

CREATE FUNCTION calculate_distance(@from_location VARCHAR(50), @to_location VARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE @distance INT
    SELECT @distance = r.distance
    FROM routes r
    WHERE r.from_location = @from_location AND r.to_location = @to_location
    RETURN @distance
END


--average feedback rating for each vehicle:
CREATE VIEW vehicle_feedback
AS
SELECT f.vehicle_name, AVG(f.rating) AS average_rating
FROM feedback f
GROUP BY f.vehicle_name

--heck if a booking for a particular route and vehicle already exists:
CREATE FUNCTION check_booking_exists(@route_name VARCHAR(50), @vehicle_name VARCHAR(50))
RETURNS BIT
AS
BEGIN
    DECLARE @booking_exists BIT
    IF EXISTS (SELECT * FROM booking WHERE route_name = @route_name AND vehicle_name = @vehicle_name)
        SET @booking_exists = 1
    ELSE
        SET @booking_exists = 0
    RETURN @booking_exists
END
