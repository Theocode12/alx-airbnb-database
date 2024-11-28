CREATE TABLE user (
    user_id VARCHAR(36) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NULL,
    role ENUM ('guest', 'host', 'admin') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE property (
    property_id VARCHAR(36) PRIMARY KEY,
    host_id VARCHAR(36),
    FOREIGN KEY(host_id) REFERENCES user(user_id),
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(100) NOT NULL,
    pricepernight DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE booking (
    booking_id VARCHAR(36) PRIMARY KEY,
    property_id VARCHAR(36),
    FOREIGN KEY(property_id) REFERENCES property(property_id),
    user_id VARCHAR(36),
    FOREIGN KEY(user_id) REFERENCES user(user_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE payment (
    payment_id VARCHAR(36) PRIMARY KEY,
    booking_id VARCHAR(36),
    FOREIGN KEY(booking_id) REFERENCES booking(booking_id),
    amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL
);

CREATE TABLE review (
    review_id VARCHAR(36) PRIMARY KEY,
    property_id VARCHAR(36),
    FOREIGN KEY(property_id) REFERENCES property(property_id),
    user_id VARCHAR(36),
    FOREIGN KEY(user_id) REFERENCES user(user_id),
    rating INT CHECK(rating >= 1 AND rating <= 5) NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE message (
    message_id VARCHAR(36) PRIMARY KEY,
    sender_id VARCHAR(36),
    FOREIGN KEY(sender_id) REFERENCES user(user_id),
    recipient_id VARCHAR(36),
    FOREIGN KEY(recipient_id) REFERENCES user(user_id),
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);