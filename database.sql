USE [GFT_Test1]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/23/2022 10:28:21 AM ******/
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/23/2022 10:28:21 AM ******/
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/23/2022 10:28:21 AM ******/
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/23/2022 10:28:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/23/2022 10:28:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/23/2022 10:28:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (1, 11, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (2, 11, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (3, 12, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (4, 12, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (5, 13, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (6, 13, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (7, 14, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (8, 14, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (9, 15, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (10, 15, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (11, 16, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (12, 16, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (13, 17, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (14, 17, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (15, 18, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (16, 18, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (17, 19, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (18, 19, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (19, 20, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (20, 20, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (21, 21, 1)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (22, 21, 2)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (23, 22, 3)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID]) VALUES (24, 22, 2)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (1, 20)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (2, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (3, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (4, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (5, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (6, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (7, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (8, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (9, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (10, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (11, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (12, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (13, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (14, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (15, NULL)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (16, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (17, NULL)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (18, NULL)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (19, NULL)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (20, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (21, 10)
INSERT [dbo].[Orders] ([ID], [Amount]) VALUES (22, 14)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Price]) VALUES (1, N'banh mi', 8)
INSERT [dbo].[Products] ([ID], [Name], [Price]) VALUES (2, N'dua leo', 2)
INSERT [dbo].[Products] ([ID], [Name], [Price]) VALUES (3, N'cha lua', 12)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
