## Used dbdiagram.io for ERD
# See code below
'''
Table User {
  user_id UUID [pk, note: 'Primary Key, Indexed']
  first_name VARCHAR [not null]
  last_name VARCHAR [not null]
  email VARCHAR [unique, not null, note: 'Indexed']
  password_hash VARCHAR [not null]
  phone_number VARCHAR [null]
  role ENUM [not null, note: 'guest, host, admin']
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table Property {
  property_id UUID [pk, note: 'Primary Key, Indexed']
  host_id UUID [ref: > User.user_id, not null]
  name VARCHAR [not null]
  description TEXT [not null]
  location VARCHAR [not null]
  price_per_night DECIMAL [not null]
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
  updated_at TIMESTAMP [note: 'ON UPDATE CURRENT_TIMESTAMP']
  
  Indexes {
    property_id [name: 'idx_property_id']
  }
}

Table Booking {
  booking_id UUID [pk, note: 'Primary Key, Indexed']
  property_id UUID [ref: > Property.property_id, not null]
  user_id UUID [ref: > User.user_id, not null]
  start_date DATE [not null]
  end_date DATE [not null]
  total_price DECIMAL [not null]
  status ENUM [not null, note: 'pending, confirmed, canceled']
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
  
  Indexes {
    property_id [name: 'idx_booking_property']
    booking_id [name: 'idx_booking_id']
  }
}

Table Payment {
  payment_id UUID [pk, note: 'Primary Key, Indexed']
  booking_id UUID [ref: > Booking.booking_id, not null]
  amount DECIMAL [not null]
  payment_date TIMESTAMP [default: `CURRENT_TIMESTAMP`]
  payment_method ENUM [not null, note: 'credit_card, paypal, stripe']
  
  Indexes {
    booking_id [name: 'idx_payment_booking']
  }
}

Table Review {
  review_id UUID [pk, note: 'Primary Key, Indexed']
  property_id UUID [ref: > Property.property_id, not null]
  user_id UUID [ref: > User.user_id, not null]
  rating INTEGER [not null, note: 'CHECK: rating >= 1 AND rating <= 5']
  comment TEXT [not null]
  created_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}

Table Message {
  message_id UUID [pk, note: 'Primary Key, Indexed']
  sender_id UUID [ref: > User.user_id, not null]
  recipient_id UUID [ref: > User.user_id, not null]
  message_body TEXT [not null]
  sent_at TIMESTAMP [default: `CURRENT_TIMESTAMP`]
}'''

# // Relationship Notes:
# // User (1) -> (Many) Property: A user can host multiple properties
# // User (1) -> (Many) Booking: A user can make multiple bookings
# // Property (1) -> (Many) Booking: A property can have multiple bookings
# // Booking (1) -> (1) Payment: Each booking has one payment
# // User (1) -> (Many) Review: A user can write multiple reviews
# // Property (1) -> (Many) Review: A property can receive multiple reviews
# // User (1) -> (Many) Message (as sender): A user can send multiple messages
# // User (1) -> (Many) Message (as recipient): A user can receive multiple messages

![alt text](<ERD.png>)

## Link to the interactiver version of the diagram
https://dbdiagram.io/d/ERD-68b41fa4777b52b76c585fd6