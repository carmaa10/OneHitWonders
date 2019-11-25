/*  Carma Aten
	One Hit Wonders Database Creation
	Created: 10/2/2019					*/

CREATE DATABASE OneHitWonders;
GO

USE OneHitWonders;
/* CREATE TABLES ----------------------------------------------------------------------------------------------------------------- */
CREATE TABLE Country(
	CountryCode varchar(3) NOT NULL,
	Country varchar(25) NOT NULL,
	PRIMARY KEY (CountryCode)
);

CREATE TABLE Genre(
	GenreID varchar(10) NOT NULL,
	Genre varchar(25) NOT NULL,
	PRIMARY KEY (GenreID) 
);

CREATE TABLE Album(
	AlbumID varchar(10) NOT NULL,
	AlbumName varchar(50) NOT NULL,
	PRIMARY KEY (AlbumID)
);

CREATE TABLE ArtistInfo(
	ArtistID varchar(10) NOT NULL,
	ArtistName varchar(50)  NOT NULL,
	CountryCode varchar(3) NOT NULL,
	PRIMARY KEY (ArtistID)
);

CREATE TABLE RecordLabel(
	LabelID varchar(10) NOT NULL,
	LabelName varchar(50) NOT NULL,
	CountryCode varchar(3) NOT NULL,
	PRIMARY KEY (LabelID)
);

CREATE TABLE SongInfo(
	SongID varchar(10) NOT NULL,
	SongName varchar(50) NOT NULL,
	GenreID varchar(10) NOT NULL,
	ReleaseYear char(4) NOT NULL,
	ArtistID varchar(10) NOT NULL,
	AlbumID varchar(10),
	LabelID varchar(10),
	PRIMARY KEY (SongID)
);

CREATE TABLE SongRank(
	SongID varchar(10) NOT NULL,
	RankDate date NOT NULL,
	BillboardRank char(1) NOT NULL,
	PRIMARY KEY (SongID, RankDate)
);

/* ALTER TABLES ------------------------------------------------------------------------------------------------------------------ */
ALTER TABLE ArtistInfo
ADD CONSTRAINT FK_ArtistInfo_CountryCode FOREIGN KEY (CountryCode) REFERENCES Country(CountryCode);

ALTER TABLE RecordLabel
ADD CONSTRAINT FK_RecordLabel_CountryCode FOREIGN KEY (CountryCode) REFERENCES Country(CountryCode);

ALTER TABLE SongInfo
ADD CONSTRAINT FK_SongInfo_GenreID FOREIGN KEY (GenreID) REFERENCES Genre(GenreID);
ALTER TABLE SongInfo
ADD CONSTRAINT FK_SongInfo_ArtistID FOREIGN KEY (ArtistID) REFERENCES ArtistInfo(ArtistID); 
ALTER TABLE SongInfo
ADD CONSTRAINT FK_SongInfo_AlbumID FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID); 
ALTER TABLE SongInfo
ADD CONSTRAINT FK_SongInfo_LabelID FOREIGN KEY (LabelID) REFERENCES RecordLabel(LabelID); 

ALTER TABLE SongRank
ADD CONSTRAINT FK_SongRank_SongID FOREIGN KEY (SongID) REFERENCES SongInfo(SongID);

/* CREATE INDICIES ------------------------------------------------------------------------------------------------------------- */
CREATE INDEX IDX_ArtistInfo_CountryCode ON ArtistInfo(CountryCode);

CREATE INDEX IDX_RecordLabel_CountryCode ON RecordLabel(CountryCode);

CREATE INDEX IDX_SongInfo_GenreID ON Genre(GenreID);
CREATE INDEX IDX_SongInfo_ArtistID ON ArtistInfo(ArtistID);
CREATE INDEX IDX_SongInfo_AlbumID ON Album(AlbumID);
CREATE INDEX IDX_SongInfo_LabelID ON RecordLabel(LabelID);

CREATE INDEX IDX_SongRank_SongID ON SongInfo(SongID);