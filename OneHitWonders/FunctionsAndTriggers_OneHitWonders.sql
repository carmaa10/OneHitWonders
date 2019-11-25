/* Carma Aten 
   Final Project Procedures */
USE OneHitWonders;
GO
/* Final Project Procedures ********************//*

CREATE PROC spArtistsFromUSA
AS
BEGIN
	SELECT ArtistName FROM ArtistInfo
	WHERE CountryCode = 'USA';
END
GO

EXEC spArtistsFromUSA;

GO

CREATE PROC spArtistsFromCountry
	@Country varchar(3)
AS
BEGIN
	SELECT ArtistName FROM ArtistInfo
	WHERE CountryCode = @Country 
END;
GO
EXEC spArtistsFromCountry 'UK';
GO

CREATE PROC spNumberGenreMentions
	@GenreID varchar(10)
AS
BEGIN
	DECLARE @GenreCount int;
	SELECT @GenreCount = COUNT(GenreID)
	FROM SongInfo
	WHERE GenreID = @GenreID;

	RETURN @GenreCount;
END;

DECLARE @GenreAppearences int;
EXEC @GenreAppearences = spNumberGenreMentions 'Al';
PRINT @GenreAppearences;

CREATE PROC spCountSongs
AS
BEGIN
	DECLARE @NumberSongs int;
	SELECT @NumberSongs = COUNT(*) FROM SongInfo;
	RETURN @NumberSongs;
END;

DECLARE @TotalNumberSongs int;
EXEC @TotalNumberSongs = spCountSongs;
PRINT @TotalNumberSongs;*/

/* Final Project User Defined Functions *****************/

SELECT SongName FROM SongInfo
WHERE ArtistID = dbo.fnGetSongbyArtist('SiMaALo');

/*
ALTER FUNCTION fnGetSongbyArtist
	(@ArtistID varchar(10))
	RETURNS varchar(50)
	BEGIN
		RETURN (SELECT SongName FROM SongInfo WHERE @ArtistID = ArtistID);
	END;


CREATE FUNCTION fnSongsByGenre
	(@GenreID varchar(10))
	RETURNS table
	RETURN (SELECT * FROM SongInfo WHERE @GenreID = SongInfo.GenreID);
GO
SELECT * FROM dbo.fnSongsByGenre('Po');

DECLARE @SongByArtist varchar(10);
EXEC fnGetSongByArtist('MeBr');
PRINT @SongByArtist;
*/

/* Final Project Triggers *****************//*
CREATE TABLE ActivityLog(
	CountryCode varchar(10),
	Status varchar(30));

GO
CREATE TRIGGER Country_INSERT ON Country
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CountryCode varchar(3)
    SELECT @CountryCode =INSERTED.Country
    FROM INSERTED

    INSERT INTO ActivityLog
    VALUES(@CountryCode, 'Inserted')
END

INSERT INTO Country(CountryCode, Country) VALUES('AU', 'Australia');

SELECT * FROM ActivityLog;

CREATE TRIGGER Country_DELETE ON Country
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CountryCode varchar(3);
    SELECT @CountryCode =DELETED.Country
    FROM DELETED

    INSERT INTO ActivityLog
    VALUES(@CountryCode, 'Deleted')
END

DELETE FROM Country WHERE Country = 'Australia';
SELECT * FROM ActivityLog;

CREATE TRIGGER Country_UPDATE ON Country
    AFTER UPDATE
AS
BEGIN
	DECLARE @Action varchar(20); 
    SET NOCOUNT ON;
    DECLARE @CountryCode varchar(3);
    SELECT @CountryCode =INSERTED.Country
    FROM INSERTED

    INSERT INTO ActivityLog
    VALUES(@CountryCode, 'Updated Country')
END
GO
UPDATE Country SET Country = 'United States of America' WHERE CountryCode = 'USA';
SELECT * FROM ActivityLog;*/