CREATE TABLE profiles (
    cnic int  primary key ,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL
);


CREATE TABLE bus (
    bus_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    seats INT NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
);

CREATE TABLE train (
    train_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    seats INT NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
   
);

CREATE TABLE aero (
    aero_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    seats INT NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    
);

CREATE TABLE feedback (
    feedback_text VARCHAR(500),
    cnic bigint ,
    FOREIGN KEY (cnic) REFERENCES profiles (cnic)

);

CREATE TABLE booking (
    booking_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    date_booked DATETIME NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    bus_id UNIQUEIDENTIFIER  DEFAULT NEWID(),
    train_id UNIQUEIDENTIFIER  DEFAULT NEWID(),
    aero_id UNIQUEIDENTIFIER DEFAULT NEWID(),
    cnic INT NOT NULL,
    FOREIGN KEY (bus_id) REFERENCES bus(bus_id),
    FOREIGN KEY (train_id) REFERENCES train(train_id),
    FOREIGN KEY (aero_id) REFERENCES aero(aero_id),
    FOREIGN KEY (cnic) REFERENCES profiles(cnic)
);

CREATE TABLE payment (
    payment_id UNIQUEIDENTIFIER  DEFAULT NEWID(),
    payment_type VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date_paid DATETIME NOT NULL,
    cnic int primary key,
    FOREIGN KEY (cnic) REFERENCES profiles(cnic)
);

CREATE TABLE routes (
    route_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    distance INT NOT NULL
);

