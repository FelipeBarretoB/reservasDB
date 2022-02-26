CREATE TABLE Hotel
  (
    hotelNo CHAR(4) ,
    hotelName VARCHAR(30),
    city VARCHAR(20),
    PRIMARY KEY (hotelNo)
  );

CREATE TABLE Room(
  roomNo int check (roomNo<120 and roomNo>1) ,
  hotelNo CHAR(4) references Hotel(hotelNo),
  type CHAR(6) check (type in('Single','Family','Double')),
  price int check (price>10 and price<100),
  PRIMARY KEY (roomNo),
  FOREIGN KEY (hotelNo) references Hotel(hotelNo)
  );
  
 CREATE TABLE Guest
  (
    guestNo CHAR(4) ,
    guestName VARCHAR(30),
    guestAdress VARCHAR(50),
    PRIMARY KEY (guestNo) 
  );
  
 CREATE TABLE Booking
  (
    hotelNo CHAR(4) references Hotel(hotelNo) ,
    guestNo CHAR(4) references Guest(guestNo) ,
    dateFrom date check(datefrom>CURRENT_DATE),
    dateTo date check (dateto>datefrom),
    roomNo int references Room(roomNo),
    FOREIGN KEY (hotelNo) references Hotel(hotelNo),
    FOREIGN KEY (roomNo) references Room(roomNo),
    FOREIGN KEY (guestNo) references Guest(guestNo)
  );

INSERT INTO Hotel VALUES('0001', 'Hotel Barce','Barcelona');
INSERT INTO Hotel VALUES('0002', 'Uvic','Victoria');
INSERT INTO Hotel VALUES('0003', 'Takayama','Kyoto');
INSERT INTO Hotel VALUES('0004', 'Palace','Warsaw');
INSERT INTO Hotel VALUES('0005', 'Toscana','Cali');
INSERT INTO Hotel VALUES('0006', 'Glamho','Roma');
INSERT INTO Hotel VALUES('0007', 'Passarela Hotel','Paris');
INSERT INTO Hotel VALUES('0008', 'Queen','Chicago');
INSERT INTO Hotel VALUES('0009', 'El bosque','Praga');
INSERT INTO Hotel VALUES('0010', 'Candel','Ámsterdam');

INSERT INTO Room VALUES('111','0001','Single','11');
INSERT INTO Room VALUES('117','0002','Double','99');
INSERT INTO Room VALUES('115','0003','Family','58');
INSERT INTO Room VALUES('118','0004','Single','30');
INSERT INTO Room VALUES('119','0005','Single','55');
INSERT INTO Room VALUES('110','0006','Double','90');
INSERT INTO Room VALUES('105','0007','Double','75');
INSERT INTO Room VALUES('106','0008','Family','40');
INSERT INTO Room VALUES('90','0009','Family','20');
INSERT INTO Room VALUES('50','0010','Single','56');

INSERT INTO Guest VALUES('0001','Alex','Monument sq, charlestown, MA 02129');

INSERT INTO Guest VALUES('0002','Felipe','Carrera 103 # 11-40');

INSERT INTO Guest VALUES('0003','Otto','22605 Hamburgo, Alemania');

INSERT INTO Guest VALUES('0004','Pera','Carrera 1 #18-12a');

INSERT INTO Guest VALUES('0005','Valeria','Cq. 1#70-01');

INSERT INTO Guest VALUES('0006','Matias','Barnardsville, North Carolina(NC), 28709
');
INSERT INTO Guest VALUES('0007','Paula','Walterboro, South Carolina(SC), 29488
');
INSERT INTO Guest VALUES('0008','Gabriel','Algonac, Michigan(MI), 48001
');
INSERT INTO Guest VALUES('0009','Jesus','Lincolnton, Georgia(GA), 30817
');
INSERT INTO Guest VALUES('0010','Diana','Peyton, Colorado(CO), 80831
');

INSERT INTO Booking VALUES('0001', '0001','2022-09-01','2022-09-10','111');
INSERT INTO Booking VALUES('0002', '0002','2022-03-28','2022-04-06','117');
INSERT INTO Booking VALUES('0003', '0003','2022-05-24','2022-05-29','115');
INSERT INTO Booking VALUES('0004', '0004','2022-04-14','2022-04-20','118');
INSERT INTO Booking VALUES('0005', '0005','2022-12-14','2022-12-28','119');
INSERT INTO Booking VALUES('0006', '0006','2022-04-10','2022-04-13','110');
INSERT INTO Booking VALUES('0007', '0007','2022-05-20','2022-05-25','105');
INSERT INTO Booking VALUES('0008', '0008','2022-06-24','2022-06-28','106');
INSERT INTO Booking VALUES('0009', '0009','2022-07-15','2022-07-23','90');
INSERT INTO Booking VALUES('0010', '0010','2022-08-13','2022-08-26','50');





select * from Hotel;
select * from Room;
select * from Guest;
select * from Booking

