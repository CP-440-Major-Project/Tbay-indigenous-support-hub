

--Users Table


CREATE DATABASE TbayIndigenousSupportHub;
GO

USE TbayIndigenousSupportHub;
GO


CREATE TABLE Users(
	UserId INT IDENTITY(1,1) PRIMARY KEY,
	FullName NVARCHAR(100) NOT NULL,
	Email NVARCHAR(150) NOT NULL UNIQUE,
	PasswordHash NVARCHAR(255) NOT NULL,
	Role NVARCHAR(50) NOT NULL,
	IsActive BIT NOT NULL DEFAULT 1,
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE()

);

-- Business Table

CREATE TABLE Businesses (
	BusinessId INT IDENTITY(1,1) PRIMARY KEY,
	BusinessName NVARCHAR(150) NOT NULL,
	Description NVARCHAR(500),
	Category NVARCHAR(100),
	OwnerUserId INT NOT NULL,
	Phone NVARCHAR(20),
	Email NVARCHAR(150),
	Address NVARCHAR(255),
	IsVerified BIT NOT NULL DEFAULT 0,
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
	CONSTRAINT FK_Businesses_Users
		FOREIGN KEY (OwnerUserId) REFERENCES Users(UserId)

);

-- Services Table

CREATE TABLE Services (
	ServiceId INT IDENTITY(1,1) PRIMARY KEY,
	ServiceName NVARCHAR(150) NOT NULL,
	Category NVARCHAR(100),
	Description NVARCHAR(500),
	ContactInfo NVARCHAR(255),
	Location NVARCHAR(255),
	IsActive BIT NOT NULL DEFAULT 1,
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE()

);

--Events Table

CREATE TABLE Events (
	EventId INT IDENTITY(1,1) PRIMARY KEY,
	EventTitle NVARCHAR(150) NOT NULL,
	EventType NVARCHAR(100),
	Description NVARCHAR(500),
	EventDate DATETIME NOT NULL,
	Location NVARCHAR(255),
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE()

);

-- OTP Requests Table
--A foreign key enforces a relationship between tables and ensures that values in one table must exist in another related table
CREATE TABLE OTPRequests (
	OTPId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    OTPCode NVARCHAR(10) NOT NULL,
    ExpiryTime DATETIME NOT NULL,
    IsUsed BIT NOT NULL DEFAULT 0,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
	CONSTRAINT FK_OTPRequests_Users
		FOREIGN KEY (UserId) REFERENCES Users(UserId) 
	
);