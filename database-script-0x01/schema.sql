CREATE TABLE User IF NOT EXISTS (
    user_id PRIMARY KEY UUID INDEXED
    first_name VARCHAR NOT NULL
    last_name VARCHAR NOT NULL
    email VARCHAR UNIQUE NOT NULL
    password_hash VARCHAR NOT NULL
    phone_number VARCHAR NULL
    role ENUM(guest, host, admin) NOT NULL
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    INDEXES {
        email [ name: 'email']
    }
)

CREATE TABLE Property IF NOT EXISTS (
    property_id UUID PRIMARY KEY INDEXED
    host_id UUID
    name VARCHAR NOT NULL
    description TEXT NOT NULL
    location VARCHAR NOT NULL
    pricepernight DECIMAL NOT NULL
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    FOREIGN KEY (host_id) REFERENCES User(user_id)
)

CREATE TABLE Booking IF NOT EXISTS (
    booking_id UUID PRIMARY KEY INDEXED
    property_id UUID
    user_id UUID
    start_date DATE NOT NULL
    end_date DATE NOT NULL
    total_price DECIMAL NOT NULL
    status ENUM(pending, confirmed, canceled) NOT NULL
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    FOREIGN KEY (property_id) REFERENCES Property(property_id)
    FOREIGN KEY (user_id) REFERENCES User(user_id)
    INDEXES {
        property-id [name: 'property_id']
    }
)

CREATE TABLE Payment IF NOT EXISTS (
    payment_id UUID PRIMARY KEY INDEXED
    booking_id UUID
    amount DECIMAL NOT NULL
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    payment_method ENUM(credit_card, paypal, stripe) NOT NULL
    FOREIGN KEY booking_id REFERENCES Booking(booking_id)
    INDEXES {
        booking_id [ name: 'booking_id']
    }
)

CREATE TABLE Review IF NOT EXISTS (
    review_id UUID PRIMARY KEY INDEXED
    property_id UUID
    user_id UUID
    rating CHECK: rating >=1 AND rating <=5 NOT NULL
    comment TEXT NOT NULL
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    FOREIGN KEY (property_id) REFERENCES Property(property_id) 
    FOREIGN  KEY (user_id) REFERENCES User(user_id)
) 

CREATE TABLE Message IF NOT EXISTS(
    message_id UUID PRIMARY KEY INDEXED
    sender_id UUID 
    recipient_id UUID
    message_body TEXT NOT NULL
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    FOREIGN KEY (sender_id) REFERENCES User(user_id)
    FOREIGN KEY (recipient_id) REFERENCES User(user_id)

)