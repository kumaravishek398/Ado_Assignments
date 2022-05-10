create database Travells

use Travells
go
create table Businfo
( 
BusID int primary key identity(1,1),
BoardingPoint nvarchar(10) not null,
TravelDate date not null,
Amount decimal (7,2) not null,
Rating int not null
);

INSERT INTO Businfo(BoardingPoint,TravelDate,Amount,Rating)
VALUES('HYD','2017-05-10',600.00,3),
('CHN','2017-07-25',445.95,3)
('PUN','2017-12-10',543.00,4),
('MUM','2017-01-28',500.50,4),
('PUN','2017-03-27',333.55,3);

select * from Businfo



--Createing a stored procedure to insert the records in FootBallLeague table.	

create procedure SPBusinfo

@BoardingPoint nvarchar(10),
@TravelDate date,
@Amount decimal(7,2),
@Rating int
as 
begin
INSERT INTO Businfo(BoardingPoint,TravelDate,Amount,Rating)
VALUES(@BoardingPoint,@TravelDate,@Amount,@Rating)
end


--Executing stored procedure
execute SPBusinfo

@BoardingPoint ='CCU',
@TravelDate ='2019-03-27',
@Amount=500.68,
@Rating =2

--Retrieving all BoardingPoint and TravelDate for the amount which is greater than 450..
select BoardingPoint,TravelDate from Businfo where Amount>450



--Executing View Bus_View to display the BusID, BoardingPoint whose rating is greater than 3
create view VWBuss
as
select BusID,BoardingPoint from Businfo where Rating>3


--Executing the View
select * from VWBuss

--details of  all the BusID, DroppingPoint for the bus travelled on 10-12-2017.
select BusID,BoardingPoint from Businfo where TravelDate='2017-12-10' 
