CREATE DATABASE DersOrnek
GO
USE DersOrnek
GO
CREATE TABLE Sehirler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50),
	CONSTRAINT pk_sehir PRIMARY KEY(ID)
)
GO
CREATE TABLE Ilceler
(
	ID int IDENTITY(1,1),
	SehirID int,
	Isim nvarchar(500),
	CONSTRAINT pk_ilce PRIMARY KEY(ID),
	CONSTRAINT fk_ilce_Sehir FOREIGN KEY(SehirID) REFERENCES Sehirler(ID)
)