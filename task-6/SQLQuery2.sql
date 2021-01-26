CREATE DATABASE Task8
Go

USE Task8
Go

-- danh sách sản phẩm
CREATE TABLE Products(
ProID INT ,
Name varchar(40),
MotaHang varchar(40),
DONVI varchar(40),
GIA int,
Soluong int,
Price money,
CatID int
)
GO 

INSERT INTO Products(ProID,Name,MotaHang,DONVI,GIA,Soluong,Price,CatID) VALUES (123, 'May Tinh T450','May nhap cu', 'Chiec', $1000, 10 , 111)
INSERT INTO Products(ProID,Name,MotaHang,DONVI,GIA,Soluong,Price,CatID) VALUES (124, 'dien thoai nokia5670','Dien thoai dang hot', 'Chiec', $200, 200 , 100)
INSERT INTO Products(ProID,Name,MotaHang,DONVI,GIA,Soluong,Price,CatID) VALUES (125, 'may in samsung 450','May in dang loai binh', 'Chiec', $100, 10 , 101)

Go

SELECT * FROM Products
Go

CREATE TABLE Categories(
CatID int,
NameCompany varchar(60),

)
Go

INSERT INTO Categories(CatID,NameCompany) VALUES (121,'Asus' )
INSERT INTO Categories(CatID,NameCompany) VALUES (122,'Lenovo' )
INSERT INTO Categories(CatID,NameCompany) VALUES (123,'Dell' )
Go

SELECT* FROM Categories
Go

CREATE TABLE Brand(
CusId int,
Name varchar(50),
Address varchar(50),
Tel int
)
Go

INSERT INTO Brand(CusId,Name,Address,Tel) VALUES (789, 'NGUYEN Huy hoang','MyDinh-HANOI' , 344047379)
Go

SELECT * FROM Brand
Go

--4 hiển thị các câu lệnh truy vấn
--a) hiển thị tất cả các hãng sản xuất

SELECT NameCompany FROM  categories
Go

--b hiển thị các danh sách sản phẩm
SELECT Name FROM Products
Go

-- 5 viết các câu lệnh truy vấn đề
--a) liệt kê danh sách hãng theo thứ tự ngược với alphabest

SELECT* FROM Categories
ORDER BY NameCompany DESC
Go
--c) hiễn thị thông tin của hãng Asus

SELECT * FROM Brand 
Go

--d) liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho
SELECT SoLuong * FROM Products
WHERE SoLuong < 11
Go

-- e ) liệt kê danh sachs sản phẩm của hãng asus
SELECT NameCompany * FROM Categories

Go