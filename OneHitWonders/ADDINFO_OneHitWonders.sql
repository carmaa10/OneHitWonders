USE OneHitWonders;

-- ADD Country Data
INSERT INTO Country (CountryCode, Country) VALUES 
('USA', 'United States'),
('SCT', 'Scotland'),
('UK',  'United Kingdom'),
('NO',  'Norway'),
('SP',  'Spain');

-- ADD Genre Info
INSERT INTO Genre (GenreID, Genre) VALUES
('Ro',   'Rock'), 
('Po',   'Pop'), 
('So',	 'Soul'), 
('SoRo', 'Soft Rock'), 
('PoRo', 'Pop Rock'), 
('Al',   'Alternative'), 
('Fu',   'Funk'), 
('NeWa', 'New Wave'), 
('Ja',   'Jazz'), 
('HiHo', 'Hip-Hop');

-- ADD Album Info
INSERT INTO Album (AlbumID, AlbumName) VALUES
('HB',   'Hey! Baby'),
('SITS', 'Spirit In The Sky'),
('EA',   'Everythings Archie'),
('MBS',  'Mr. Big Stuff'),
('LG',   'Looking Glass'),
('GTK',  'Get The Knack'),
('TT2',  'Tommy Tutone 2'),
('NSEC', 'Non-Stop Erotic Cabaret'),
('TRA',  'Too-Rye-Ay'),
('KOTR', 'KIller on the Rampage'),
('HHAL', 'Hunting High and Low'),
('TBC',  'The Breakfast Club'),
('SP',   'Simple Pleasures'),
('SOL',  'Sunshine on Leith'),
('TBNS', 'The Biz Never Sleeps'),
('LII',  'Lean Into It'),
('MD',   'Mack Daddy'),
('AMMG', 'A Mi Me Gusta'),
('BTE',  'Blurring The Edges');

-- ADD ArtistInfo Info
INSERT INTO ArtistInfo (ArtistID, ArtistName, CountryCode) VALUES
('BoDa',    'Bobby Day', 'USA'),
('BrCh',    'Bruce Channel', 'USA'),
('NoGr',    'Norman Greenbaum', 'USA'),
('ThAr',    'The Archies', 'USA'),
('JeKn',    'Jean Knight', 'USA'),
('LoGl',    'Looking Glass', 'USA'),
('Pi',	    'Pilot', 'SCT'),
('ToTu',    'Tommy Tutone', 'USA'),
('SoCe',    'Soft Cell', 'UK'),
('DeMiRu',  'Dexys Midnight Runners', 'UK'),
('EdGr',    'Eddy Grant', 'UK'),
('Aha',     'A-Ha', 'NO'),
('SiMi',    'Simple Minds', 'SCT'),
('BoMc',    'Bobby McFerrin', 'USA'),
('ThPr',    'The Proclaimers', 'SCT'),
('BiMa',    'Biz Markie', 'USA'),
('MrBi',    'Mr. Big', 'USA'),
('SiMaALo', 'Sir Mix-A-Lot', 'USA'),
('LoDeRi',  'Los Del Rio', 'SP'),
('MeBr',    'Meredith Brooks', 'USA'), */
('ThKn',    'The Knack', 'USA');


-- ADD RecordLabel Info
INSERT INTO RecordLabel (LabelID, LabelName, CountryCode) VALUES
('ClRe',   'Class Records',            'USA'),
('SmRe',   'Smash Records',            'USA'),
('ReRe',   'Reprise Records',          'USA'),
('RcRe',   'RCA Records',              'USA'),
('StRe',   'Stax Records',             'USA'),
('EpRe',   'Epic Records',             'USA'),
('EmRe',   'EMI Records',              'UK'),
('CaRe',   'Capitol Records',		   'USA'),
('CoRe',   'Columbia Records',		   'USA'),
('WaBr',   'Warner Bros.',		       'USA'),
('ViRe',   'Virgin Records',           'UK'),
('ChRe',   'Chrysalis Records',        'UK'),
('AtRe',   'Atlantic Records',		   'USA'),
('DeAmRe', 'Def Americans Recordings', 'USA'); 

USE [OneHitWonders]
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'86Je', N'867-5309/Jenny', N'Po', N'1981', N'ToTu', N'TT2', N'CoRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'BaGoBa', N'Baby Got Back', N'HiHo', N'1992', N'SiMaALo', N'MD', N'DeAmRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'Bi', N'Bitch', N'Al', N'1997', N'MeBr', N'BTE', N'CaRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'BrYoAFiGi', N'Brandy (You''re A Fine Girl)', N'SoRo', N'1972', N'LoGl', N'LG', N'EpRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'CoOnEi', N'Come On Eileen', N'Al', N'1982', N'DeMiRu', N'TRA', N'WaBr')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'DoYoFoAbMe', N'Dont You (Forget About Me)', N'PoRo', N'1985', N'SiMi', N'TBC', N'ViRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'ElAv', N'Electric Avenue', N'Fu', N'1983', N'EdGr', N'KOTR', N'EmRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'HeBa', N'Hey! Baby', N'Po', N'1961', N'BrCh', N'HB', N'SmRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'JuAFr', N'Just A Friend', N'HiHo', N'1989', N'BiMa', N'TBNS', N'WaBr')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'Ma', N'Magic', N'PoRo', N'1974', N'Pi', NULL, N'EmRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'MrBiSt', N'Mr. Big Stuff', N'So', N'1971', N'JeKn', N'MBS', N'StRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'MySh', N'My Sharona', N'Ro', N'1979', N'ThKn', N'GTK', N'CaRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'RoRo', N'Rockin Robin', N'Ro', N'1958', N'BoDa', NULL, N'ClRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'SpInTheSk', N'Spirit In The Sky', N'Ro', N'1969', N'NoGr', N'SITS', N'ReRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'SuSu', N'Sugar, Sugar', N'Po', N'1969', N'ThAr', N'EA', N'RcRe')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'TaLo', N'Tainted Love', N'Po', N'1982', N'SoCe', N'NSEC', N'WaBr')
GO
INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES (N'TaOnMe', N'Take On Me', N'NeWa', N'1984', N'Aha', N'HHAL', N'WaBr')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'86Je', CAST(N'1982-05-22' AS Date), N'4')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'BaGoBa', CAST(N'1992-07-04' AS Date), N'1')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'Bi', CAST(N'1998-07-12' AS Date), N'2')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'BrYoAFiGi', CAST(N'1972-08-26' AS Date), N'1')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'CoOnEi', CAST(N'1983-04-23' AS Date), N'1')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'DoYoFoAbMe', CAST(N'1985-05-18' AS Date), N'1')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'ElAv', CAST(N'1983-07-02' AS Date), N'2')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'HeBa', CAST(N'1962-03-10' AS Date), N'1')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'JuAFr', CAST(N'1990-03-19' AS Date), N'9')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'Ma', CAST(N'1975-07-12' AS Date), N'5')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'MrBiSt', CAST(N'1971-08-14' AS Date), N'2')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'MySh', CAST(N'1979-08-25' AS Date), N'1')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'RoRo', CAST(N'1958-08-13' AS Date), N'2')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'SpInTheSk', CAST(N'1970-04-18' AS Date), N'3')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'SuSu', CAST(N'1969-09-20' AS Date), N'1')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'TaLo', CAST(N'1982-07-17' AS Date), N'8')
GO
INSERT [dbo].[SongRank] ([SongID], [RankDate], [BillboardRank]) VALUES (N'TaOnMe', CAST(N'1985-10-19' AS Date), N'1')
GO


-- failed commands I don't want to let go of. 

/*
-- ADD SongInfo Info
-- INSERT [dbo].[SongInfo] ([SongID], [SongName], [GenreID], [ReleaseYear], [ArtistID], [AlbumID], [LabelID]) VALUES
--(N'RoRo', N'Rockin Robin', N'Ro', N'1958', N'BoDa', NULL, N'ClRe')
--INSERT INTO SongInfo (SongID, SongName, GenreID, ReleaseYear, ArtistID, AlbumID, LabelID) VALUES
--('RoRo',		'Rockin Robbin',			'Ro',	'1958', 'BoDa',    NULL,   'ClRe'),
--('HeBa',		'Hey! Baby',				'Po',	'1961', 'BrCh',    'HBB',  'SmRe'),
--('SpInThSk',	'Spirit In The Sky',		'Ro',	'1969', 'NoGr',    'SITS', 'ReRe'),
--('SuSu',		'Sugar, Sugar',				'BuPo', '1969', 'TheAr',   'EA',   'RcRe'),
--('MrBiSt',		'Mr. Big Stuff',			'So',	'1971', 'JeKn',    'MBS',  'SRe'),
--('BrYoAFiGi',	'Brnady Youre A Fine Girl', 'SoRo', '1971', 'LoGl',    'LG',   'EpRe'),
--('Ma',			'Magic',					'PoRo', '1974', 'Pi',      NULL,   'EmRe'),
('MySh',		'My Sharona',				'Ro',	'1979', 'ThKn',    'GTK',  'CaRe'),
('86Je',		'867-5309/Jenny',			'Po',	'1981', 'ToTu',    'TT2',  'CoRe'),
('TaLo',		'Tainted Love',				'Po',	'1982', 'SoCe',	   'NSEC', 'WaBr'),
('CoOnEi',		'Come On Eileen',			'Al',	'1982', 'DeMiRu',  'TRA',  'MeRe'),
('ElAv',		'Electric Avenue',			'Fu',	'1983', 'EdGr',    'KOTR', 'EmRe'),
('TaOnMe',		'Take On Me',				'NeWa', '1984', 'Aha',     'HHAL', 'WaBr'),
('DoYoFoAbMe',	'Dont You Forget About Me', 'PoRo', '1985', 'SiMi',    'TBC',  'ViRe'),
('DoWoBeHa',	'Dont Worry, Be Happy',		'Ja',	'1988', 'BoMc',    'SP',   'EmRe'),
('ImGoBe500Mi', 'Im Gonna Be (500 Miles)',	'Ro',	'1988', 'ThPr',    'SOL',  'ChRe'),
('JuAFr',		'Just A Friend',			'HiHo', '1989', 'BiMa',    'TBNS', 'WaBr'),
('ToBeWiYo',	'To Be With You',			'SoRo', '1991', 'MrBi',    'LII',  'AtRe'),
('BaGoBa',		'Baby Got Back',			'HiHo', '1992', 'SiMiALo', 'MD',   'DeAmRe'),
('Mac',			'Macarena',					'Po',	'1995', 'LoDeRi',  'AMMG', 'RcRe'),
('Bi',			'Bitch',					'Al',	'1997', 'MeBr',    'BTE',  'CaRe');

-- ADD SongRank Info
INSERT INTO SongRank (SongID, RankDate, BillboardRank) VALUES
('RoRo',        '8/13/1958',  '2'),
('HeBa',        '3/10/1962',  '1'),
('SpInThSky',   '4/18/1970',  '3'),
('SuSu',	    '9/20/1969',  '1'),
('MrBiSt',      '8/14/1971',  '2'),
('BrYoAFiGi',   '8/26/1972',  '1'),
('Ma',          '7/12/1975',  '5'),
('MySh',        '8/25/1982',  '1'),
('86Je',        '5/22/1982',  '4'),
('TaLo',        '7/17/1982',  '8'),
('CoOnEi',      '4/23/1983',  '1'),
('ElAv',        '7/2/1983',   '2'),
('TaOnMe',      '10/19/1985', '1'),
('DoYoFoAbMe',  '5/18/1985',  '1'),
('JuAFr',		'3/19/1990',  '9'),
('BaGoBa',		'7/4/1992',   '1'),
('Bi',			'7/12/1998',  '2');
*/