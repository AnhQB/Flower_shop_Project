USE [master]
GO
/****** Object:  Database [Project_PRJ301]    Script Date: 7/18/2022 8:04:04 AM ******/
CREATE DATABASE [ShopFlower]
GO
CREATE TABLE [dbo].[Admin](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NULL,
	[password] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 7/18/2022 8:04:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[orderID] [varchar](32) NOT NULL,
	[dateCreate] [datetime] NULL,
	[cusName] [nvarchar](30) NOT NULL,
	[cusPhone] [varchar](30) NULL,
	[cusAddress] [nvarchar](100) NULL,
	[total] [money] NULL,
	[status] [int] NULL,
	[cusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 7/18/2022 8:04:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[proID] [varchar](30) NOT NULL,
	[orderID] [varchar](32) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[proID] ASC,
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/18/2022 8:04:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cateID] [varchar](2) NOT NULL,
	[cateName] [nvarchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/18/2022 8:04:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[cusID] [int] IDENTITY(1,1) NOT NULL,
	[cusName] [varchar](30) NOT NULL,
	[cusPhone] [varchar](15) NULL,
	[cusAddress] [varchar](100) NULL,
	[username] [varchar](30) NOT NULL,
	[password] [varchar](16) NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[cusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/18/2022 8:04:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[proID] [varchar](30) NOT NULL,
	[proName] [nvarchar](100) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[image] [varchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[status] [bit] NULL,
	[cateID] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([adminID], [username], [password]) VALUES (1, N'giaitue106', N'12345678')
GO
INSERT [dbo].[Admin] ([adminID], [username], [password]) VALUES (2, N'dinhnam277', N'87654321')
GO
INSERT [dbo].[Admin] ([adminID], [username], [password]) VALUES (3, N'admin', N'00000000')
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B01', CAST(N'2022-01-20T12:12:12.000' AS DateTime), N'Vuong Giai Tue', N'0964234234', N'Yuanlin, Changhua, Taiwan', 500.0000, 0, 1)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B02', CAST(N'2022-01-22T15:06:23.100' AS DateTime), N'Vuong Loi Nha', N'0123789567', N'Taichung, Taiwan', 640.0000, 0, 2)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B03', CAST(N'2022-02-01T10:06:00.000' AS DateTime), N'Le Phuong Trieu Ha', N'016327884', N'Hanoi, Vietnam', 840.0000, 0, 3)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B04', CAST(N'3922-04-04T00:00:00.000' AS DateTime), N'Le Phuong Trieu Ha', N'016327884', N'Hanoi, Vietnam', 250.0000, 0, 3)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B05', CAST(N'3922-04-04T00:00:00.000' AS DateTime), N'Vuong Loi Nha', N'0123789567', N'Taichung, Taiwan', 190.0000, 0, 2)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B06', CAST(N'3922-04-04T00:00:00.000' AS DateTime), N'Vuong Giai Tue', N'0964234234', N'Yuanlin, Changhua, Taiwan', 620.0000, 0, 1)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B07', CAST(N'3922-04-04T00:00:00.000' AS DateTime), N'Vuong Loi Nha', N'0123789567', N'Taichung, Taiwan', 150.0000, 0, 2)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B08', CAST(N'3922-04-04T00:00:00.000' AS DateTime), N'Vuong Loi Nha', N'0123789567', N'Taichung, Taiwan', 300.0000, 0, 2)
GO
INSERT [dbo].[Bill] ([orderID], [dateCreate], [cusName], [cusPhone], [cusAddress], [total], [status], [cusID]) VALUES (N'B10', CAST(N'3922-04-04T00:00:00.000' AS DateTime), N'Vuong Loi Nha', N'0123789567', N'Taichung, Taiwan', 150.0000, 0, 2)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P01', N'B04', 1, 250.0000, 250.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P02', N'B03', 1, 150.0000, 150.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P02', N'B06', 1, 150.0000, 150.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P02', N'B07', 1, 150.0000, 150.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P02', N'B08', 2, 150.0000, 300.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P02', N'B10', 1, 150.0000, 150.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P03', N'B01', 2, 250.0000, 500.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P04', N'B05', 1, 190.0000, 190.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P05', N'B06', 1, 130.0000, 130.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P08', N'B06', 1, 150.0000, 150.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P09', N'B03', 3, 230.0000, 690.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P11', N'B02', 1, 280.0000, 280.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P12', N'B06', 1, 190.0000, 190.0000)
GO
INSERT [dbo].[BillDetail] ([proID], [orderID], [quantity], [price], [total]) VALUES (N'P15', N'B02', 1, 360.0000, 360.0000)
GO
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (N'AN', N'Anniversary', 1)
GO
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (N'CO', N'Congratulations', 1)
GO
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (N'DE', N'Decoration', 1)
GO
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (N'RO', N'Romance', 1)
GO
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (N'WD', N'Wedding', 1)
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([cusID], [cusName], [cusPhone], [cusAddress], [username], [password], [status]) VALUES (1, N'Vuong Giai Tue', N'0964234234', N'Yuanlin, Changhua, Taiwan', N'meobeongungoc', N'12345678', 1)
GO
INSERT [dbo].[Customer] ([cusID], [cusName], [cusPhone], [cusAddress], [username], [password], [status]) VALUES (2, N'Vuong Loi Nha', N'0123789567', N'Taichung, Taiwan', N'stupidfatcat', N'12345678', 1)
GO
INSERT [dbo].[Customer] ([cusID], [cusName], [cusPhone], [cusAddress], [username], [password], [status]) VALUES (3, N'Le Phuong Trieu Ha', N'016327884', N'Hanoi, Vietnam', N'anata', N'12345678', 1)
GO
INSERT [dbo].[Customer] ([cusID], [cusName], [cusPhone], [cusAddress], [username], [password], [status]) VALUES (4, N'sinh', N'0917076864', N'Hung yen', N'sinhdq', N'12345678', 1)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P01', N'EnlessLove', 0, 0.0000, N'images/WD-LoveLetter.jpg', N'A bouquet of red roses is not just romantic and classic - it is also timeless and elegant. Their enchanting smell refines the absolute beauty in them and delivers passion. Red roses will always be a way to say Ã¢ÂÂI love youÃ¢ÂÂ.', 0, N'RO')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P02', N'Magic Moments', 15, 150.0000, N'images/WD-MagicMoments.jpg', N'Can you resist the sweet promise of angelic white Chrysanthemums, cream-coloured Germini blooms embracing the gorgeous scented Lily? This bouquet inspires an atmosphere of warmth that will give you wings and melt your heart.', 1, N'WD')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P03', N'Spring Poetry', 15, 250.0000, N'images/WD-SpringPoetry.jpg', N'This adorable arrangement comes in different shades of pink roses and lilies. Pink is known to be the color of serenity, positive energy, inspiration and hope. A uniquely designed best-selling beauty that knows the true meaning of flower power.', 1, N'WD')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P04', N'Beautiful Day', 15, 190.0000, N'images/CO-BeautifulDay.jpg', N'Create a special moment with this gorgeous bouquet of white lilies, roses and alstroemerias. A classic design that gives off simplicity and purity. Whatever the occasion, it will make its recipient’s day.', 1, N'CO')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P05', N'New Day', 15, 130.0000, N'images/CO-NewDay.jpg', N'Wealth, prosperity, good fortune? Know anyone who would not be delighted to receive of all of these? Our exclusive good-luck bamboo not only delivers good luck, it has good karma attached.', 1, N'CO')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P06', N'Silent', 15, 200.0000, N'images/CO-Silent.jpg', N'White roses is accented with the bright green stems of Bells of Ireland and a gorgeous assortment of lush greens, while seated in a white designer plastic urn to create a beautiful way to honour the life of the deceased.', 1, N'CO')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P07', N'Forever', 15, 500.0000, N'images/AN-Forever.jpg', N'Orange Asiatic lilies, fuchsia carnations, red Peruvian lilies, lavender chrysanthemums and lush greens are perfectly arranged in a clear glass bubble bowl vase to send your sweetest sentiments across the miles.', 1, N'AN')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P08', N'Pink Dream', 15, 150.0000, N'images/AN-PinkDream.jpg', N'Ready for the runway, as it were. A delightful combination of light colours and lovely flowers, it is simply beautiful. Light pink roses, alstroemeria, cushion spray chrysanthemums and statice are delivered in a stylish vase.', 1, N'AN')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P09', N'Sweet Thoughts', 15, 230.0000, N'images/AN-SweetThoughts.jpg', N'If you would like someone to think sweet thoughts, send them this delightful bouquet! A graceful heart of bear grass is tied with purple waxflower, and appears to float above roses. How sweet it is!', 1, N'AN')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P10', N'Color Of Love', 15, 260.0000, N'images/RO-ColorOfLove.jpg', N'Make love blossom all over again. Surprise her with not one, but two dozen gorgeous red roses in a sparkling clear glass vase. Life will be twice as rosy for you both all week long.', 1, N'RO')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P11', N'Told me', 15, 280.0000, N'images/RO-ToldMe.jpg', N'What is more romantic than a dozen red roses? Proclaim your love eternal with this radiant gift of crimson blooms and fresh greens, gathered in a classic clear vase. This bouquet features twelve red roses arranged with spiral eucalyptus and lemon leaf.', 1, N'RO')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P12', N'Falling In Love', 15, 190.0000, N'images/RO-FallingInLove.jpg', N'One, two, three! Three dozen spectacularly gorgeous red roses delivered in a dazzling flared glass vase positive proof that love is a many-splendoured thing. Imagine her loving this amazing bouquet day after day. Hero-worshipping time.', 1, N'RO')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P13', N'Reaching Hearts', 15, 320.0000, N'images/DE-ReachingHearts.jpg', N'Share a touch of class with your loved. With elegance, class and purity a dozen white roses is a graceful way to express your feelings on occasions where only pure emotion will do such as weddings, anniversaries and demonstrations of love.', 1, N'DE')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P14', N'Warm Sunny', 15, 420.0000, N'images/DE-WarmSunny.jpg', N'The Sunny Bouquets is a blooming expression of charming cheer. Brilliant yellow roses and Peruvian lilies share the spotlight with white traditional daisies and green button poms to create a memorable bouquet.', 1, N'DE')
GO
INSERT [dbo].[Product] ([proID], [proName], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'P15', N'Wonder', 15, 360.0000, N'images/DE-Wonder.jpg', N'This arrangement of pink roses and alstroemerias releases the perfect blend of sweetness and energy to send your love across the distance to someone on their birthday, to celebrate a new baby or just because.', 1, N'DE')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Admin__F3DBC57299FACE71]    Script Date: 7/18/2022 8:04:05 AM ******/
ALTER TABLE [dbo].[Admin] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__F3DBC572CC2506A0]    Script Date: 7/18/2022 8:04:05 AM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT (getdate()) FOR [dateCreate]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([cusID])
REFERENCES [dbo].[Customer] ([cusID])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Bill] ([orderID])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cateID])
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD CHECK  ((len([password])>=(8)))
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD CHECK  ((len([password])>=(8)))
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD CHECK  (([quantity]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [Project_PRJ301] SET  READ_WRITE 
GO
