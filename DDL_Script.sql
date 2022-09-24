CREATE DATABASE Scrollatravel2;
USE Scrollatravel2;
CREATE TABLE IF NOT EXISTS Hotel (
Hotel_ID INT NOT NULL,
HotelName VARCHAR(100) NOT NULL,
Address VARCHAR(200) NOT NULL,
HotelDesc VARCHAR(100) NOT NULL,
City VARCHAR(100) NOT NULL,
Country VARCHAR(30) NOT NULL,
Rating DOUBLE NOT NULL,
PRIMARY KEY (Hotel_ID),
CONSTRAINT Rating_ck check (Rating >= 0 or Rating <=5 )
);
CREATE TABLE IF NOT EXISTS roomtype (
Roomtype_id INT NOT NULL,
Roomtype VARCHAR(45) NOT NULL,
RoomPrice DOUBLE NOT NULL,
PRIMARY KEY (Roomtype_id));
CREATE TABLE IF NOT EXISTS hotelroom (
RoomNo VARCHAR(10) NOT NULL,
RoomStatus VARCHAR(45) NOT NULL,
Hotel_Hotel_id INT NOT NULL,
roomtype_Roomtype_id INT NOT NULL,
PRIMARY KEY (RoomNo),
INDEX fk_Hotelroom_Hotel1_idx (Hotel_Hotel_id ASC) ,
INDEX fk_hotelroom_roomtype1_idx (roomtype_Roomtype_id ASC) ,
CONSTRAINT fk_Hotelroom_Hotel1
FOREIGN KEY (Hotel_Hotel_id)
REFERENCES hotel (Hotel_ID),
CONSTRAINT fk_hotelroom_roomtype1
FOREIGN KEY (roomtype_Roomtype_id)
REFERENCES roomtype (Roomtype_id),
CONSTRAINT RoomStatus_ck check (RoomStatus = 'Available' or RoomStatus =
'Unavailable'));
CREATE TABLE IF NOT EXISTS Resort (
Resort_ID INT NOT NULL,
ResortPrice DOUBLE NOT NULL,
ResortDesc VARCHAR(25) NOT NULL,
ResortName VARCHAR(45) NOT NULL,
Address VARCHAR(200) NOT NULL,
Country VARCHAR(30) NOT NULL,
Rating DOUBLE NOT NULL,
City VARCHAR(100) NOT NULL,
PRIMARY KEY (Resort_ID),
CONSTRAINT RatingResort_ck check (Rating >= 0 or Rating <=5 )
);

CREATE TABLE IF NOT EXISTS customer (
Customer_ID INT NOT NULL,
Fname VARCHAR(50) NOT NULL,
Lname VARCHAR(50) NOT NULL,
Gender CHAR(1) NULL DEFAULT NULL,
Tel CHAR(10) NOT NULL,
Email VARCHAR(50) NOT NULL,
CRank VARCHAR(25) NOT NULL,
Address VARCHAR(50) NOT NULL,
Postcode VARCHAR(30) NOT NULL,
City VARCHAR(35) NOT NULL,
Country VARCHAR(35) NOT NULL,
PRIMARY KEY (Customer_ID),
constraint CRank_ck check (CRank = 'Gold' or CRank = 'silver' or CRank = 'bronze'or
CRank = 'platinum'),
constraint Gender_ck check (Gender = 'M' or Gender = 'F')
);
CREATE TABLE IF NOT EXISTS promotion (
Promotion_ID INT NOT NULL,
Promotion_name VARCHAR(50) NOT NULL,
PromotionStartDate DATE NOT NULL,
PromotionEndDate DATE NOT NULL,
PromotionCondition VARCHAR(100) NOT NULL,
PromotionDetails VARCHAR(150) NOT NULL,

PRIMARY KEY (Promotion_ID)
);
CREATE TABLE IF NOT EXISTS booking (
Booking_ID INT NOT NULL,
BookingDate DATE NOT NULL,
BookingStatus VARCHAR(50) NOT NULL,
ArriveDate DATE NOT NULL,
DepartDate DATE NOT NULL,
NumOfChild INT NOT NULL,
NumOfAdult INT NOT NULL,
Hotelroom_RoomNo VARCHAR(10) NULL,
Resort_Resort_ID INT NULL,
PRIMARY KEY (Booking_ID),
INDEX fk_booking_Hotelroom1_idx (Hotelroom_RoomNo ASC) ,
INDEX fk_booking_Resort1_idx (Resort_Resort_ID ASC) ,
CONSTRAINT fk_booking_Hotelroom1
FOREIGN KEY (Hotelroom_RoomNo)
REFERENCES Hotelroom (RoomNo),
CONSTRAINT fk_booking_Resort1
FOREIGN KEY (Resort_Resort_ID)
REFERENCES Resort (Resort_ID),
constraint BookingStatus_ck check (BookingStatus = 'Book unsucceeded' or
BookingStatus = 'Book succeeded'));
CREATE TABLE IF NOT EXISTS receipt (
Receipt_ID INT NOT NULL,
PaymentDate DATETIME NOT NULL,
ReceiptStatus VARCHAR(25) NOT NULL,
Price DOUBLE NOT NULL,
Promotion_ID INT NULL DEFAULT NULL,
booking_Booking_ID INT NOT NULL,
customer_Customer_ID INT NOT NULL,
PRIMARY KEY (Receipt_ID),
INDEX FKPromotion_ID (Promotion_ID ASC) ,
INDEX fk_receipt_booking1_idx (booking_Booking_ID ASC) ,
INDEX fk_receipt_customer1_idx (customer_Customer_ID ASC) ,
CONSTRAINT FKPromotion_ID
FOREIGN KEY (Promotion_ID)
REFERENCES promotion (Promotion_ID),
CONSTRAINT fk_receipt_booking1
FOREIGN KEY (booking_Booking_ID)
REFERENCES booking (Booking_ID),
CONSTRAINT fk_receipt_customer1
FOREIGN KEY (customer_Customer_ID)
REFERENCES customer (Customer_ID),
constraint ReceiptStatus_ck check (ReceiptStatus = 'not paided' or
ReceiptStatus = 'paided' or ReceiptStatus = 'cancel'))