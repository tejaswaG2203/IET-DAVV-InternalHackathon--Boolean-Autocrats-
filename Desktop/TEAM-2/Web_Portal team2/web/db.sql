create database SIHDB;
use SIHDB;

create table Register(
    rid int AUTO_INCREMENT PRIMARY KEY,
    name varchar(50) NOT NULL,
    dob varchar(18) NOT NULL,
    address varchar(60) NOT NULL,
    email varchar(30) NOT NULL UNIQUE,
    phone varchar(18) NOT NULL UNIQUE,
    category int NOT NULL
);

create table Seller(
    sid int AUTO_INCREMENT PRIMARY KEY,
    location varchar(50) NOT NULL,
    commodity varchar(50) NOT NULL,
    quantity int NOT NULL,
    rate float NOT NULL,
    phone varchar(18) NOT NULL,
    date varchar(15) NOT NULL
);

create table Buyer(
    sid int AUTO_INCREMENT PRIMARY KEY,
    commodity varchar(50) NOT NULL,
    quantity int NOT NULL
);
