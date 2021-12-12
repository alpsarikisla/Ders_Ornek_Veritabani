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
GO
CREATE TABLE yok_universiteler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(500),
	CONSTRAINT pk_Universite PRIMARY KEY(ID),
)
GO
CREATE TABLE yok_fakulteler
(
	ID nvarchar(50),
	UniversiteID int,
	Isim nvarchar(500),
	CONSTRAINT pk_fakulte PRIMARY KEY(ID),
	CONSTRAINT fk_fakulte_universite FOREIGN KEY(UniversiteID) REFERENCES yok_universiteler(ID)
)
GO
CREATE TABLE yok_Bolumler
(
	ID int,
	fakulteID nvarchar(50),
	UniversiteID int,
	Isim nvarchar(500),
	CONSTRAINT pk_bolum PRIMARY KEY(ID),
	CONSTRAINT fk_bolum_fakulte FOREIGN KEY(fakulteID) REFERENCES yok_fakulteler(ID),
	CONSTRAINT fk_bolum_universite FOREIGN KEY(UniversiteID) REFERENCES yok_universiteler(ID)
)