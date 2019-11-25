/* Final Project Views */
USE OneHitWonders;
/*
GO
CREATE VIEW V_Songs
AS 
SELECT ArtistInfo.ArtistName, SongInfo.SongName
FROM SongInfo
JOIN ArtistInfo ON ArtistInfo.ArtistID = SongInfo.ArtistID;
GO
CREATE VIEW V_SongInfo
AS
SELECT * FROM SongInfo;
GO
CREATE VIEW V_ArtistInfo
AS
SELECT * FROM ArtistInfo;
GO
CREATE VIEW V_RecordLabel
AS
SELECT * FROM RecordLabel;
GO 

INSERT INTO V_RecordLabel (LabelID, LabelName, CountryCode)
VALUES('FuByRa', 'Fueled By Ramen', 'USA');
*/