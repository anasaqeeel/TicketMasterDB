----procedures

----for searching profiles
--CREATE PROCEDURE search1
--    @name VARCHAR(100)
--AS
--BEGIN
--    SELECT *
--    FROM profiles
--    WHERE name = @name;
--END

----adding routes
--CREATE PROCEDURE add_route
--    @name VARCHAR(100),
--    @from_location VARCHAR(100),
--    @to_location VARCHAR(100),
--    @distance FLOAT
--AS
--BEGIN
--    INSERT INTO routes (name, from_location, to_location, distance)
--    VALUES (@name, @from_location, @to_location, @distance)

--    SELECT * FROM routes
--END



--for adding price
--CREATE PROCEDURE InsertPrice
--  @vehicle_name VARCHAR(50),
--  @type VARCHAR(15),
--  @from_location VARCHAR(50),
--  @to_location VARCHAR(50),
--  @price INT
--AS
--BEGIN
--  INSERT INTO price (vehicle_name, type, from_location, to_location, price)
--  VALUES (@vehicle_name, @type, @from_location, @to_location, @price);

--  SELECT * FROM price

--END;



--signup
--CREATE PROCEDURE AddProfile
--    @cnic bigint,
--    @name VARCHAR(100),
--    @city VARCHAR(100),
--    @age INT,
--    @phone_number VARCHAR(20),
--    @email VARCHAR(100),
--    @password VARCHAR(50),
--    @gender VARCHAR(10)
--AS
--BEGIN
--    INSERT INTO profiles (cnic, name, city, age, phone_number, email, password, gender)
--    VALUES (@cnic, @name, @city, @age, @phone_number, @email, @password, @gender)
--END





----getting from location
CREATE PROCEDURE GetFromLocationsByVehicleType
    @vehicleName VARCHAR(15)
AS
BEGIN
    SELECT DISTINCT from_location
    FROM routes r
    INNER JOIN vehicle v ON r.name = v.vehicle_name
    WHERE v.vehicle_name = @vehicleName
END

drop procedure GetToLocationsByVehicleType

----getiing to location
CREATE PROCEDURE GetToLocationsByVehicleType
    @vehicleName VARCHAR(50)
AS
BEGIN
    SELECT DISTINCT to_location
    FROM routes r
    INNER JOIN vehicle v ON r.name = v.vehicle_name
    WHERE v.vehicle_name = @vehicleName
	END
--exec GetToLocationsByVehicleType @vehicleName='tezz raftar';


--for getting the trasnposrt name based on user prefernces

--CREATE PROCEDURE get_vehicle_names
--    @type varchar(15)
--AS
--BEGIN
--    SELECT DISTINCT vehicle.vehicle_name
--    FROM routes
--    INNER JOIN vehicle
--        ON routes.name = vehicle.vehicle_name
--    WHERE vehicle.type = @type
--END



--CREATE PROCEDURE GetTimeSlot
--    @from_location varchar(50),
--    @to_location varchar(50),
--    @name varchar(50)
--AS
--BEGIN
--    SELECT [time] FROM [time] 
--    WHERE [from_location] = @from_location 
--    AND [to_location] = @to_location 
--    AND [name] = @name
--END
--CREATE PROCEDURE GetTimeSlot
--    @from_location varchar(50),
--    @to_location varchar(50),
--    @name varchar(50)
--AS
--BEGIN
--    SELECT [time]
--    FROM [time]
--    WHERE [from_location] = @from_location
--      AND [to_location] = @to_location
--      AND [name] = @name
--END

--EXEC GetTimeSlot 'Lahore', 'Sahiwal', 'Ali express'
select *from time

--time
--CREATE PROCEDURE InsertTimeRecord
--    @fromLocation NVARCHAR(50),
--    @name NVARCHAR(50),
--    @time NVARCHAR(50),
--    @toLocation NVARCHAR(50)
--AS
--BEGIN
--    -- Insert new record into time table
--    INSERT INTO time ([from_location], [name], [time], [to_location])
--    VALUES (@fromLocation, @name, @time, @toLocation);

--    -- Display all records in the time table
--    SELECT * FROM time;
--END

--CREATE PROCEDURE SearchTime
--    @fromLocation VARCHAR(50) = NULL,
--    @name VARCHAR(50) = NULL,
--    @time VARCHAR(50) = NULL,
--    @toLocation VARCHAR(50) = NULL
--AS
--BEGIN
--    -- Display all records from time table if no parameters are given
--    IF @fromLocation IS NULL AND @name IS NULL AND @time IS NULL AND @toLocation IS NULL
--    BEGIN
--        SELECT *
--        FROM time;
--    END
--    -- Display matching records from time table
--    ELSE
--    BEGIN
--        SELECT *
--        FROM time
--        WHERE ([from_location] = @fromLocation OR @fromLocation IS NULL)
--        AND ([name] = @name OR @name IS NULL)
--        AND ([time] = @time OR @time IS NULL)
--        AND ([to_location] = @toLocation OR @toLocation IS NULL);
--    END
--END




--CREATE PROCEDURE SearchRoutes
--    @fromLocation VARCHAR(50) = NULL,
--    @toLocation VARCHAR(50) = NULL,
--    @distance INT = NULL,
--    @name VARCHAR(50) = NULL
	
--AS
--BEGIN
--    -- Display all records from routes table if no parameters are given
--    IF @fromLocation IS NULL AND @toLocation IS NULL AND @distance IS NULL and @name is null 
--    BEGIN
--        SELECT *
--        FROM routes;
--    END
--    -- Display matching records from routes table
--    ELSE
--    BEGIN
--        SELECT *
--        FROM [routes] r
--        WHERE (r.[from_location] = @fromLocation OR @fromLocation IS NULL)
--        AND (r.[to_location] = @toLocation OR @toLocation IS NULL)
--        AND (r.[distance] = @distance OR @distance IS NULL) 
--		and (r.[name]=@name or @name is null);
--    END
--END


--CREATE PROCEDURE SearchTime
--    @fromLocation VARCHAR(50),
--    @name VARCHAR(50),
--    @time VARCHAR(50),
--    @toLocation VARCHAR(50)
--AS
--BEGIN
--    -- Display matching records from time table
--    SELECT *
--    FROM time
--    WHERE [from_location] = @fromLocation
--    AND [name] = @name
--    AND [time] = @time
--    AND [to_location] = @toLocation;
--END



--CREATE PROCEDURE insert_feedback
--    @cnic BIGINT,
--    @feedback_text VARCHAR(500)
--AS
--BEGIN
--    INSERT INTO feedback (cnic, feedback_text)
--    VALUES (@cnic, @feedback_text)
--END



--from location getter 
--CREATE PROCEDURE GetFromLocationsByVehicleType
--    @vehicleType VARCHAR(15)
--AS
--BEGIN
--    SELECT DISTINCT from_location
--    FROM routes r
--    INNER JOIN vehicle v ON r.name = v.vehicle_name
--    WHERE v.type = @vehicleType
--END

--EXEC GetFromLocationsByVehicleType @vehicleType = 'bus'
--getiing to_location
--CREATE PROCEDURE GetToLocationsByVehicleType
--    @vehicleType VARCHAR(15)
--AS
--BEGIN
--    SELECT DISTINCT to_location
--    FROM routes r
--    INNER JOIN vehicle v ON r.name = v.vehicle_name
--    WHERE v.type = @vehicleType
--END

--EXEC GetToLocationsByVehicleType @vehicleType = 'bus';





create table admin(
 cnic int  primary key ,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL);
insert into profiles([cnic],[age],[city],[email],[gender],[name],[password],[phone_number])
values (24321,22,'lahore','shah@gmail.com','female','shah','1111',030000000);