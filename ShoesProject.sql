create Database Shoes 
use Shoes

create table Users
(
UId int primary key identity(1,1) not null,
Username nvarchar(100)Null, 
Password nvarchar(100)Null
)

create table tblBrands
(
BrandID int identity(1,1) primary key,
Name   nvarchar(500)
)

create table tblGender
(
GenderID int identity(1,1) primary key,
GenderName   nvarchar(MAX)
)

create table tblSizes
(
SizeID int identity(1,1) primary key,
SizeName   nvarchar(500),
BrandID int foreign key references tblBrands(BrandID),
GenderID int foreign key references tblGender(GenderID)
)



create table Products
(
PID int identity(1,1) primary key,
PName   nvarchar(MAX),
PPrice int,
PSelPrice int,
PBrandID int foreign key references tblBrands(BrandID),
PGender int foreign key references tblGender(GenderID),
PDescription nvarchar(MAX),
PProductDetails nvarchar(MAX),
FreeDelivery int,
COD int
)
