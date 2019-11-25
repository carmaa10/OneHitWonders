USE OneHitWonders;

-- The amount of artists
Select COUNT(ArtistName) AS NumberOfArtists
FROM ArtistInfo;

-- highest, lowest and average billboard spots
SELECT MIN(CAST (BillboardRank AS int)) AS HighestRank,
       MAX(CAST (BillboardRank AS int)) AS LowestRank,
	   AVG(CAST (BillboardRank AS int)) AS AverageRank
FROM SongRank;