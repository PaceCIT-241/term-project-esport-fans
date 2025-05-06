CREATE DATABASE fifa2021;
USE fifa2021;

CREATE TABLE Nationality (
    NationalityID INT AUTO_INCREMENT PRIMARY KEY,
    CountryName VARCHAR(100),
    FifaCode CHAR(3)
);
CREATE TABLE PlayerPosition (
    PositionID INT AUTO_INCREMENT PRIMARY KEY,
    PositionName VARCHAR(50),
    PositionType ENUM('GK', 'DEF', 'MID', 'ATT')
);
CREATE TABLE Club (
    ClubID INT AUTO_INCREMENT PRIMARY KEY,
    ClubName VARCHAR(100),
    Country VARCHAR(100)
);
CREATE TABLE Player (
    PlayerID INT PRIMARY KEY,
    Name VARCHAR(100),
    NationalityID INT,
    PositionID INT,
    OverallRating INT,
    FOREIGN KEY (NationalityID) REFERENCES Nationality(NationalityID),
    FOREIGN KEY (PositionID) REFERENCES PlayerPosition(PositionID)
);

CREATE TABLE PlayerClub (
    PlayerID INT,
    ClubID INT,
    ContractStart DATE,
    ContractEnd DATE,
    JerseyNumber INT,
    PRIMARY KEY (PlayerID, ClubID),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);







