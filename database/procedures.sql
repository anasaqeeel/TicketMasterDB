--procedures

--for searching profiles
CREATE PROCEDURE search1
    @name VARCHAR(100)
AS
BEGIN
    SELECT *
    FROM profiles
    WHERE name = @name;
END

--adding routes
CREATE PROCEDURE add_route
    @name VARCHAR(100),
    @from_location VARCHAR(100),
    @to_location VARCHAR(100),
    @distance FLOAT
AS
BEGIN
    INSERT INTO routes (name, from_location, to_location, distance)
    VALUES (@name, @from_location, @to_location, @distance)

    SELECT * FROM routes
END



--for adding price
CREATE PROCEDURE InsertPrice
  @vehicle_name VARCHAR(50),
  @type VARCHAR(15),
  @from_location VARCHAR(50),
  @to_location VARCHAR(50),
  @price INT
AS
BEGIN
  INSERT INTO price (vehicle_name, type, from_location, to_location, price)
  VALUES (@vehicle_name, @type, @from_location, @to_location, @price);

  SELECT * FROM price

END;

exec

--signup
CREATE PROCEDURE AddProfile
    @cnic bigint,
    @name VARCHAR(100),
    @city VARCHAR(100),
    @age INT,
    @phone_number VARCHAR(20),
    @email VARCHAR(100),
    @password VARCHAR(50),
    @gender VARCHAR(10)
AS
BEGIN
    INSERT INTO profiles (cnic, name, city, age, phone_number, email, password, gender)
    VALUES (@cnic, @name, @city, @age, @phone_number, @email, @password, @gender)
END




create view transport_type as(
select v.type from [vehicle] v group by v.type)

--getting from location
CREATE PROCEDURE GetFromLocationsByVehicleType
    @vehicleType VARCHAR(15)
AS
BEGIN
    SELECT DISTINCT from_location
    FROM routes r
    INNER JOIN vehicle v ON r.name = v.vehicle_name
    WHERE v.type = @vehicleType
END

--getiing to location
CREATE PROCEDURE GetToLocationsByVehicleType
    @vehicleType VARCHAR(15)
AS
BEGIN
    SELECT DISTINCT to_location
    FROM routes r
    INNER JOIN vehicle v ON r.name = v.vehicle_name
    WHERE v.type = @vehicleType
END
exec GetToLocationsByVehicleType @vehicleType='bus';
