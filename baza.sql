USE [18ip36]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 30.04.2021 16:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[Код пользователя] [int] IDENTITY(1,1) NOT NULL,
	[Логин] [nchar](30) NOT NULL,
	[Пароль] [nchar](30) NOT NULL,
	[Фамилия] [nchar](50) NOT NULL,
	[Изображение] [nvarchar](50) NOT NULL,
	[Имя] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[Код пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Авторы]    Script Date: 30.04.2021 16:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторы](
	[Код Автора] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](30) NOT NULL,
	[Имя] [nvarchar](30) NULL,
	[Примечание] [nvarchar](30) NULL,
 CONSTRAINT [PK_Авторы] PRIMARY KEY CLUSTERED 
(
	[Код Автора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Авторы книги]    Script Date: 30.04.2021 16:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторы книги](
	[Код Автора книги] [int] IDENTITY(1,1) NOT NULL,
	[Кода автора] [int] NULL,
	[Код книги] [int] NOT NULL,
 CONSTRAINT [PK_Авторы книги] PRIMARY KEY CLUSTERED 
(
	[Код Автора книги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Выдача]    Script Date: 30.04.2021 16:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Выдача](
	[Номер Выдачи] [int] IDENTITY(1,1) NOT NULL,
	[Дата выдачи] [date] NOT NULL,
	[Дата Возврата] [date] NOT NULL,
	[Сдано] [date] NULL,
	[Срок] [int] NOT NULL,
	[Номер читательного билета] [int] NOT NULL,
	[Код книги] [int] NULL,
	[Название книги] [nvarchar](50) NULL,
 CONSTRAINT [PK_Выдача] PRIMARY KEY CLUSTERED 
(
	[Номер Выдачи] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Издательство]    Script Date: 30.04.2021 16:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Издательство](
	[Издательство] [int] IDENTITY(1,1) NOT NULL,
	[Город] [nvarchar](30) NOT NULL,
	[Название] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Издательство] PRIMARY KEY CLUSTERED 
(
	[Издательство] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Книги]    Script Date: 30.04.2021 16:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Книги](
	[Код книги] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](50) NOT NULL,
	[Раздел] [int] NOT NULL,
	[Издательство] [int] NOT NULL,
	[Год издательства] [int] NOT NULL,
	[Место Хранения] [nchar](30) NOT NULL,
	[Изображение] [nvarchar](50) NULL,
 CONSTRAINT [PK_Книги1] PRIMARY KEY CLUSTERED 
(
	[Код книги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разделы]    Script Date: 30.04.2021 16:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разделы](
	[Раздел] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Разделы] PRIMARY KEY CLUSTERED 
(
	[Раздел] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Читатели]    Script Date: 30.04.2021 16:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Читатели](
	[Номер читательского билеты] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](30) NOT NULL,
	[Имя] [nvarchar](30) NOT NULL,
	[Отчество] [nvarchar](30) NULL,
	[Адрес] [nchar](30) NOT NULL,
	[Телефон] [nchar](30) NULL,
 CONSTRAINT [PK_Читатели] PRIMARY KEY CLUSTERED 
(
	[Номер читательского билеты] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Авторы книги]  WITH CHECK ADD  CONSTRAINT [FK_Авторы книги_Авторы] FOREIGN KEY([Кода автора])
REFERENCES [dbo].[Авторы] ([Код Автора])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Авторы книги] CHECK CONSTRAINT [FK_Авторы книги_Авторы]
GO
ALTER TABLE [dbo].[Авторы книги]  WITH CHECK ADD  CONSTRAINT [FK_Авторы книги_Книги1] FOREIGN KEY([Код книги])
REFERENCES [dbo].[Книги] ([Код книги])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Авторы книги] CHECK CONSTRAINT [FK_Авторы книги_Книги1]
GO
ALTER TABLE [dbo].[Выдача]  WITH CHECK ADD  CONSTRAINT [FK_Выдача_Книги1] FOREIGN KEY([Код книги])
REFERENCES [dbo].[Книги] ([Код книги])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Выдача] CHECK CONSTRAINT [FK_Выдача_Книги1]
GO
ALTER TABLE [dbo].[Выдача]  WITH CHECK ADD  CONSTRAINT [FK_Выдача_Читатели] FOREIGN KEY([Номер читательного билета])
REFERENCES [dbo].[Читатели] ([Номер читательского билеты])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Выдача] CHECK CONSTRAINT [FK_Выдача_Читатели]
GO
ALTER TABLE [dbo].[Книги]  WITH CHECK ADD  CONSTRAINT [FK_Книги1_Издательство] FOREIGN KEY([Издательство])
REFERENCES [dbo].[Издательство] ([Издательство])
GO
ALTER TABLE [dbo].[Книги] CHECK CONSTRAINT [FK_Книги1_Издательство]
GO
ALTER TABLE [dbo].[Книги]  WITH CHECK ADD  CONSTRAINT [FK_Книги1_Разделы] FOREIGN KEY([Раздел])
REFERENCES [dbo].[Разделы] ([Раздел])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Книги] CHECK CONSTRAINT [FK_Книги1_Разделы]
GO
