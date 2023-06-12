
create database FlightDb
use FlightDb

create table Flight(
FlightId int Primary key not null,
FlightName Varchar(100) not null,
[Source] varchar(100) not null,
Destination Varchar (100) not null,
DepartureTime varchar(100) not null,
TicketAmount int not null
)


create table Passenger(
PassengerId Int Primary key identity(4000,1) not null,
Name varchar(100) not null,
City varchar(100) not null,
Country Varchar(100) not null,
MobileNo int not null,
Age int not null,
Gender varchar(30))


create table Booking(
bookingId int primary key identity(60000,1),
Passenger int foreign key references Passenger(PassengerId),
Flight int foreign key references Flight(FlightId),
[From] varchar(100) not null,
[To] varchar(100) not null,
[Date] date)


create table Payment(
PaymentId int primary key identity(3000,1),
Passenger int foreign key references Passenger(PassengerId),
Booking int foreign key references Booking(bookingId),
Amount int foreign key references Flight(FlightId)
)