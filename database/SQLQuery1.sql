--CREATE TABLE profiles (
--    cnic bigint  primary key ,
--    name VARCHAR(100) NOT NULL,
--    city VARCHAR(100) NOT NULL,
--    age INT NOT NULL,
--    phone_number VARCHAR(20) NOT NULL,
--    email VARCHAR(100) NOT NULL,
--    password VARCHAR(50) NOT NULL,
--    gender VARCHAR(10) NOT NULL
--);


--CREATE TABLE feedback (
--    feedback_text VARCHAR(500) NOT NULL,
--    cnic bigint primary key,
--    FOREIGN KEY (cnic) REFERENCES profiles (cnic)

--);


--CREATE TABLE bus (
--    name varchar(50) PRIMARY KEY,
--    seats INT NOT NULL,
--	id UNIQUEIDENTIFIER DEFAULT NEWID()
    
--);


--CREATE TABLE train (
--    name varchar(50) PRIMARY KEY ,
--    seats INT NOT NULL,
--   id UNIQUEIDENTIFIER DEFAULT NEWID()
   
--);

--CREATE TABLE aero (
--    name varchar(50) PRIMARY KEY ,
--    seats INT NOT NULL,
--   id UNIQUEIDENTIFIER DEFAULT NEWID()
--);

--CREATE TABLE booking (
--    booking_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
--    date_booked DATETIME NOT NULL,
--    from_location VARCHAR(50) NOT NULL,
--    to_location VARCHAR(50) NOT NULL,
--    bus_name varchar(50) ,
--    train_name varchar(50) ,
--    aero_name varchar(50) ,
--    cnic bigINT NOT NULL,
--    FOREIGN KEY (bus_name) REFERENCES bus(name),
--    FOREIGN KEY (train_name) REFERENCES train(name),
--    FOREIGN KEY (aero_name) REFERENCES aero(name),
--    FOREIGN KEY (cnic) REFERENCES profiles(cnic)
--);


create table vehicle
(
vehicle_name varchar(50) primary key,
type varchar(15) 

);
CREATE TABLE routes (
    name varchar(50) ,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    distance INT NOT NULL
	foreign key(name) references vehicle(vehicle_name),
primary key(name,from_location,to_location)
	);

CREATE TABLE info (
    value VARCHAR(100),
    time VARCHAR(15),
    name VARCHAR(50),
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    price INT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    --PRIMARY KEY (name, from_location, to_location, time),
    FOREIGN KEY (name, from_location, to_location) REFERENCES routes(name, from_location, to_location)
);





select *from info

CREATE TABLE payment (
    payment_id UNIQUEIDENTIFIER  DEFAULT NEWID(),
    payment_type VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date DATETIME NOT NULL DEFAULT GETDATE(),
	status varchar(15),
    --cnic bigint primary key,
	cnic bigint,
    FOREIGN KEY (cnic) REFERENCES profiles(cnic)
);

select *from payment

create table price(
vehicle_name varchar(50),
type varchar(15),
from_location VARCHAR(50) NOT NULL,
to_location VARCHAR(50) NOT NULL,
price int
primary key(vehicle_name,from_location,to_location),
foreign key (vehicle_name,from_location,to_location)  references routes(name,from_location,to_location)
);




	create table time(
	time varchar(15),
	name varchar(50),
	from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
	primary key (name,from_location,to_location,time),
	foreign key (name,from_location,to_location) references routes(name,from_location,to_location)
	);
	
	
	

