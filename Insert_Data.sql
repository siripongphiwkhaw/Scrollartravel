-- customer --
INSERT INTO customer
(Customer_ID,Fname,Lname,Gender,Tel,Email,CRank,Address,Postcode,City,Country )
VALUES (1111, 'Inwza', 'Aekwa',
'M','0123456789','inwza@gmail.com','Gold','123/157','10451','Bangkok','Thailand' );
INSERT INTO customer
(Customer_ID,Fname,Lname,Gender,Tel,Email,CRank,Address,Postcode,City,Country )
VALUES (1112, 'Siripong', 'phiwkhaw',
'M','45456464','inwza55@gmail.com','silver','44/157','44400','Bangkok','Thailand' );
INSERT INTO customer
(Customer_ID,Fname,Lname,Gender,Tel,Email,CRank,Address,Postcode,City,Country )
VALUES (1113, 'Anuwat', 'Pattanajan',
'M','54645464','inwza44@gmail.com','Gold','113/157','54460','Bangkok','Thailand' );
INSERT INTO customer
(Customer_ID,Fname,Lname,Gender,Tel,Email,CRank,Address,Postcode,City,Country )
VALUES (1114, 'Aritach', 'krudminburee',
'F','04544644','inwza33@gmail.com','bronze','123/00','23232','Bangkok','Thailand' );
INSERT INTO customer
(Customer_ID,Fname,Lname,Gender,Tel,Email,CRank,Address,Postcode,City,Country )
VALUES (1115, 'Kittayod', 'wongwuttinun',
'F','1315416161','inwza12@gmail.com','silver','12/57','77777','Bangkok','Thailand' );
-- hotel --
INSERT INTO Hotel (Hotel_ID,HotelName,Address,HotelDesc,City,Country, Rating)
VALUES (2000,'Diamond Hotel','952/142','7 floors','Bangkok','Thailand',3.6);
-- roomtype --
INSERT INTO roomtype (Roomtype_id,Roomtype,RoomPrice )
VALUES (2001, 'Duo Room', 3000);
INSERT INTO roomtype (Roomtype_id,Roomtype,RoomPrice )
VALUES (2002, 'Single Room', 3000);
-- hotelroom --
INSERT INTO hotelroom
(RoomNo,Roomstatus,Hotel_Hotel_id,roomtype_Roomtype_id)
VALUES ('2201', 'Available', 2000,2001);
INSERT INTO hotelroom
(RoomNo,Roomstatus,Hotel_Hotel_id,roomtype_Roomtype_id)
VALUES ('2202', 'Unavailable', 2000,2002);
-- resort --
INSERT INTO Resort
(Resort_ID,ResortPrice,ResortDesc,ResortName,Address,Country,Rating,City)
VALUES (3001,2700,'4 bedroom 3 bathroom','Ruby
Resort','875/5452','Thailand',3.6,'Bangkok');
INSERT INTO Resort
(Resort_ID,ResortPrice,ResortDesc,ResortName,Address,Country,Rating,City)
VALUES (3002,2800,'3 bedroom 2 bathroom','Sapphire
Resort','625/5415','Thailand',3.5,'Bangkok');
INSERT INTO Resort
(Resort_ID,ResortPrice,ResortDesc,ResortName,Address,Country,Rating,City)
VALUES (3003,2500,'2 bedroom 1 bathroom','Emerald
Resort','455/5461','Thailand',3.5,'Bangkok');
-- promotion --
INSERT INTO
promotion(Promotion_ID,Promotion_name,PromotionStartDate,PromotionEndDate,PromotionCondition,PromotionDetails)
VALUES (9000, '2.6%', '2021-09-15', '2021-12-27','Rank Silver or above','discount
2.6%');
-- booking --
INSERT INTO booking
(Booking_ID,BookingDate,BookingStatus,ArriveDate,DepartDate,NumOfChild,NumOfAdult,Hotelroom_RoomNo,Resort_Resort_ID )
VALUES (4001,'2021-09-30','Book succeeded','2021-10-01','2021-10-03',1,2,'2201',null);
INSERT INTO booking
(Booking_ID,BookingDate,BookingStatus,ArriveDate,DepartDate,NumOfChild,NumOfAdult,Hotelroom_RoomNo,Resort_Resort_ID )
VALUES (4002,'2021-09-28','Book succeeded','2021-10-02','2021-10-06',1,0,'2202',null);
INSERT INTO booking
(Booking_ID,BookingDate,BookingStatus,ArriveDate,DepartDate,NumOfChild,NumOfAdult,Hotelroom_RoomNo,Resort_Resort_ID )
VALUES (4003,'2021-09-20','Book unsucceeded','2021-10-01','2021-10-04',4,3,null,3001);
INSERT INTO booking
(Booking_ID,BookingDate,BookingStatus,ArriveDate,DepartDate,NumOfChild,NumOfAdult,Hotelroom_RoomNo,Resort_Resort_ID )
VALUES (4004,'2021-09-24','Book unsucceeded','2021-10-01','2021-10-03',5,0,null,3002);
INSERT INTO booking
(Booking_ID,BookingDate,BookingStatus,ArriveDate,DepartDate,NumOfChild,NumOfAdult,Hotelroom_RoomNo,Resort_Resort_ID )
VALUES (4005,'2021-09-21','Book succeeded','2021-09-29','2021-10-01',2,1,null,3003);
-- receipt --
INSERT INTO receipt
(Receipt_ID,PaymentDate,ReceiptStatus,Price,Promotion_ID,booking_Booking_ID
,customer_Customer_ID)
VALUES (7001, '2021-10-20', 'paided',2985,9000,4001,1111);
INSERT INTO receipt
(Receipt_ID,PaymentDate,ReceiptStatus,Price,Promotion_ID,booking_Booking_ID
,customer_Customer_ID)
VALUES (7002, '2021-10-21', 'paided',2700,null,4002,1112);
INSERT INTO receipt
(Receipt_ID,PaymentDate,ReceiptStatus,Price,Promotion_ID,booking_Booking_ID
,customer_Customer_ID)
VALUES (7003, '2021-10-22', 'not paided',2800,null,4003,1113);
INSERT INTO receipt
(Receipt_ID,PaymentDate,ReceiptStatus,Price,Promotion_ID,booking_Booking_ID
,customer_Customer_ID)
VALUES (7004, '2021-10-23', 'paided',2700,null,4004,1114);
INSERT INTO receipt
(Receipt_ID,PaymentDate,ReceiptStatus,Price,Promotion_ID,booking_Booking_ID
,customer_Customer_ID)
VALUES (7005, '2021-10-24', 'cancel',2500,null,4005,1115);
