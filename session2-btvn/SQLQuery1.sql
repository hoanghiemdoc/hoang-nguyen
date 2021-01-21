IF EXISTS (SELECT * FROM sys.databases WHERE NAME LIKE 'Example5')
DROP DATABASE Example5


CREATE DATABASE Example5
GO

USE Example5
GO

-- TẠO BẢNG lớp học
CREATE TABLE LopHoc(
MaLopHoc INT PRIMARY KEY IDENTITY,
TenLopHoc VARCHAR(10)
)

GO
INSERT INTO LopHoc(TenLopHoc) VALUES ('T1801A');
INSERT INTO LopHoc(TenLopHoc) VALUES ('T1908A');
INSERT INTO LopHoc(TenLopHoc) VALUES ('T1909A');
INSERT INTO LopHoc(TenLopHoc) VALUES ('T2009E');
GO
SELECT * FROM LopHoc
GO

-- tạo bảng sinh viên có khóa ngoại là cột MaLopHoc,nối với bảng lớp
CREATE TABLE SinhVien(
MaSV int PRIMARY KEY,
TenSV nvarchar(40),
MaLopHoc int,
CONSTRAINT fk FOREIGN KEY (MaLopHoc) REFERENCES LopHoc(MaLopHoc)
)
GO



--thu insert data (đúng,sai)
-- Bài tập:
--tạo 2 bảng:
--category(id,name)
--product(id,name,price,catid)

CREATE Table category( 
Id int PRIMARY KEY,
Name nvarchar(50),
)
GO
SELECT *From Category
GO

INSERT INTO Category(Name,Id) VALUES ('Hoang',1187);
INSERT INTO Category(Name,Id) VALUES ('Hoang2',1190);
INSERT INTO Category(Name,Id) VALUES ('Hoang3',1160);
INSERT INTO Category(Name,Id) VALUES ('Hoang4',1141);

CREATE TABLE Product (
Id int PRIMARY KEY,
Name nvarchar(50),
Price int,
Catid int,
CONSTRAINT fk FOREIGN KEY(catid) REFERENCES Category(Id)
)
GO

SELECT *From Product
GO
INSERT INTO Product(Name,Id,price,catid) VALUES ('xiaomi',10,1187);
INSERT INTO Product(Name,Id,price,catid) VALUES ('T2005S',15,1190);
INSERT INTO Product(Name,Id,price,catid) VALUES ('T2001C',19,1160);
INSERT INTO Product(Name,Id,price,catid) VALUES ('T2008Q',25,1141);
GO






