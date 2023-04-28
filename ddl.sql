CREATE TABLE profiles (
    profile_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL
);


CREATE TABLE bus (
    bus_id INT PRIMARY KEY IDENTITY(1,1),
    seats INT NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
);

CREATE TABLE train (
    train_id INT PRIMARY KEY IDENTITY(1,1),
    seats INT NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
   
);

CREATE TABLE aero (
    aero_id INT PRIMARY KEY IDENTITY(1,1),
    seats INT NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    
);

CREATE TABLE feedback (
    feedback_id INT PRIMARY KEY IDENTITY(1,1),
    feedback_text VARCHAR(500) NOT NULL,
    profile_id INT NOT NULL,
    FOREIGN KEY (profile_id) REFERENCES profiles(profile_id)
);

CREATE TABLE booking (
    booking_id INT PRIMARY KEY IDENTITY(1,1),
    date_booked DATETIME NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    bus_id INT,
    train_id INT,
    aero_id INT,
    profile_id INT NOT NULL,
    FOREIGN KEY (bus_id) REFERENCES bus(bus_id),
    FOREIGN KEY (train_id) REFERENCES train(train_id),
    FOREIGN KEY (aero_id) REFERENCES aero(aero_id),
    FOREIGN KEY (profile_id) REFERENCES profiles(profile_id)
);

CREATE TABLE payment (
    payment_id INT PRIMARY KEY IDENTITY(1,1),
    payment_type VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date_paid DATETIME NOT NULL,
    booking_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE routes (
    route_id INT PRIMARY KEY IDENTITY(1,1),
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    distance INT NOT NULL
);
