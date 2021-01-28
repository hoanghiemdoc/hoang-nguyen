--Bảng 1 


USE  Task5
GO
--bảng sản phẩm
CREATE TABLE Product(
STT INT IDENTITY,
TENHANG varchar(40),
MOTAHANG varchar(40),
DONVI varchar(40),
SoLuong int,
GIA money

)
GO

INSERT INTO Product(TENHANG,MOTAHANG,DONVI,GIA,SoLuong) VALUES ('May Tinh T450', 'May nhap moi', 'Chiec', 1000)
INSERT INTO Product(TENHANG,MOTAHANG,DONVI,GIA,SoLuong)  VALUES ('Đien Thoai Nokia5670','Dien thoai dang hot', 'Chiec',200)
INSERT INTO Product(TENHANG,MOTAHANG,DONVI,GIA,SoLuong)  VALUES ('May in SAMSung 450', 'May in dang e','Chiec',100)
GO 

SELECT *FROM Product
GO

--bảng thể loại
CREATE TABLE Category(
STT INT IDENTITY,
TENSP varchar(40)
)
GO

INSERT INTO Category(TENSP) VALUES ( 'May Tinh')
INSERT INTO Category(TENSP) VALUES ( 'Dien Thoai')
INSERT INTO Category(TENSP) VALUES ( 'May In')
GO

SELECT * FROM Category
GO


--bảng đặt hàng
CREATE TABLE  Orders(
STT INT IDENTITY,
orderId varchar(40),
CustomerId int,
DateOrder DATETIME
)
GO

 INSERT INTO Orders(orderId,CustomerId,DateOrder) VALUES ( 'NGUYEN MINH HIEU', '2020/5/4')
 INSERT INTO Orders(orderId,CustomerId,DateOrder) VALUES ('NGUYEN MINH HIEP', '2021/6/5')
 INSERT INTO Orders(orderId,CustomerId,DateOrder) VALUES ( 'NGUYEN MINH HIEN', '2022/7/6')
 INSERT INTO Orders(orderId,CustomerId,DateOrder) VALUES ( 'NGUYEN MINH HIET', '2023/8/7')
 GO

 SELECT * FROM Orders
 GO
 --bảng chi tiết đơn hàng
 CREATE TABLE OrderDetails(
 STT INT IDENTITY,
 Motahang varchar(40)
 )
 GO

 INSERT INTO OrderDetails(Motahang) VALUES ( 'May nhap moi')
 INSERT INTO OrderDetails(Motahang) VALUES ('Dien thoai dang hot')
 INSERT INTO OrderDetails(Motahang) VALUES ( 'May in dang e')
 GO

 SELECT * FROM  OrderDetails
 GO
 --BẢNG khach hàng
 CREATE TABLE Customer(
STT INT IDENTITY,
 NGUOIDATHANG varchar (40),
 DIACHI varchar(40),
 PHONE int
 )
 GO 


 INSERT INTO Customer(NGUOIDATHANG, DIACHI, PHONE) VALUES ( 'NGUYEN VAN AN ' , 'CAUGIAY-HANOI', 344047379)
 GO 

 SELECT * FROM Customer
 GO

