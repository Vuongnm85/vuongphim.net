create database PROJECT01
go
use PROJECT01
go
/*Table Videos*/
create table Videos
(
Id char(11),
Title nvarchar(50),
Poster nvarchar(50),
Views int,
Description nvarchar(Max),
Active bit,
link varchar(50)
CONSTRAINT PK_Video PRIMARY KEY (Id)
)

/*Table Users*/
go
create table Users
(
Id char(11),
Password nvarchar(50),
Email nvarchar(50),
Fullname nvarchar(50),
Admin bit
CONSTRAINT PK_User PRIMARY KEY (Id)
)
/*Table Favorites*/
go
create table Favorites
(
Id bigint IDENTITY(1,1) NOT NULL,
UserId char(11),
VideoId char(11),
LikeDate Date
CONSTRAINT PK_Favorite PRIMARY KEY (Id)
)
alter table Favorites
add constraint FK_Favorites_Users 
foreign key (UserId) references Users (Id)

alter table Favorites
add constraint FK_Favorites_Videos
foreign key (VideoId) references Videos (Id)
/*Table Shares*/
go
create table Shares
(
Id bigint IDENTITY(1,1) not null,
UserId char(11),
VideoId char(11),
Emails nvarchar(50),
ShareDate Date
CONSTRAINT PK_Share PRIMARY KEY (Id)
)
alter table Shares
add constraint FK_Shares_Users 
foreign key (UserId) references Users (Id)

alter table Shares
add constraint FK_Shares_Videos
foreign key (VideoId) references Videos (Id)

/*Thêm dữ liệu */
/*Dữ liệu bảng Users*/
insert into Users values
('User01','123','binh@gmail.com','Nguyen Van Binh','0'),
('User02','123','phuong@gmail.com','Tran Thi Phuong','1'),
('User03','123','quynh@gmail.com','Le Thi Quynh','0'),
('User04','123','huy@gmail.com','Ly Van Huy','1'),
('User05','123','vu@gmail.com','Pham Van Vu','0')

select * from Videos

/*Dữ liệu bảng Videos*/
insert into Videos values
('VD001','Phim 01','trend-1.jpg','1000','Phim01','1','embed/I_WUbpJ7eqE'),
('VD002','Phim 03','trend-2.jpg','2000','Phim02','1','embed/I_WUbpJ7eqE'),
('VD003','Phim 04','trend-3.jpg','1500','Phim03','1','embed/I_WUbpJ7eqE'),
('VD004','Phim 05','trend-4.jpg','1090','Phim04','1','embed/I_WUbpJ7eqE'),
('VD005','Phim 06','trend-5.jpg','1300','Phim05','1','embed/C4J_9BJy6gY'),
('VD006','Phim 07','trend-6.jpg','1000','Phim06','1','embed/XRm1P7oGpMQ')

/*Dữ liệu bảng Favorites*/
insert into Favorites values
('User01','VD001','2021/01/01'),
('User01','VD002','2021/01/01'),
('User01','VD003','2021/01/02'),
('User02','VD001','2021/01/03'),
('User03','VD004','2021/01/03'),
('User05','VD005','2021/01/05')

/*Dữ liệu bảng Shares*/
insert into Shares values
('User01','VD001','binh@gmail.com','2021/01/01'),
('User01','VD003','binh@gmail.com','2021/01/02'),
('User03','VD001','quynh@gmail.com','2021/01/03'),
('User03','VD004','quynh@gmail.com','2021/01/03'),
('User05','VD005','vu@gmail.com','2021/01/05')
