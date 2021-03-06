USE [master]
GO
/****** Object:  Database [ycfzOA]    Script Date: 2018/1/9 16:51:01 ******/
CREATE DATABASE [ycfzOA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ycfzOA', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ycfzOA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ycfzOA_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ycfzOA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ycfzOA] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ycfzOA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ycfzOA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ycfzOA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ycfzOA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ycfzOA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ycfzOA] SET ARITHABORT OFF 
GO
ALTER DATABASE [ycfzOA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ycfzOA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ycfzOA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ycfzOA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ycfzOA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ycfzOA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ycfzOA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ycfzOA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ycfzOA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ycfzOA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ycfzOA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ycfzOA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ycfzOA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ycfzOA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ycfzOA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ycfzOA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ycfzOA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ycfzOA] SET RECOVERY FULL 
GO
ALTER DATABASE [ycfzOA] SET  MULTI_USER 
GO
ALTER DATABASE [ycfzOA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ycfzOA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ycfzOA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ycfzOA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ycfzOA] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ycfzOA', N'ON'
GO
ALTER DATABASE [ycfzOA] SET QUERY_STORE = OFF
GO
USE [ycfzOA]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ycfzOA]
GO
/****** Object:  Table [dbo].[departjob]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departjob](
	[jobid] [int] IDENTITY(1,1) NOT NULL,
	[did] [int] NOT NULL,
	[jobname] [nvarchar](16) NOT NULL,
	[dx] [int] NOT NULL,
 CONSTRAINT [PK_DEPARTJOB] PRIMARY KEY CLUSTERED 
(
	[jobid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gongggao]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gongggao](
	[gid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[title] [nvarchar](16) NOT NULL,
	[detail] [ntext] NOT NULL,
	[time] [datetime] NOT NULL,
 CONSTRAINT [PK_GONGGGAO] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gongwen]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gongwen](
	[qid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[season] [ntext] NOT NULL,
	[time] [datetime] NOT NULL,
	[isaccept] [bit] NOT NULL,
	[acceptuid] [int] NULL,
	[hk] [text] NOT NULL,
 CONSTRAINT [PK_GONGWEN] PRIMARY KEY CLUSTERED 
(
	[qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Htgl]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Htgl](
	[hid] [int] IDENTITY(1,1) NOT NULL,
	[htbh] [nvarchar](6) NULL,
	[uid] [int] NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[Detail] [nvarchar](max) NULL,
	[writeTime] [datetime] NULL,
 CONSTRAINT [PK_HTGL] PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jxgl]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jxgl](
	[jid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[yj] [int] NOT NULL,
	[detail] [ntext] NULL,
	[time] [datetime] NOT NULL,
 CONSTRAINT [PK_JXGL] PRIMARY KEY CLUSTERED 
(
	[jid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[richeng]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[richeng](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[detail] [text] NOT NULL,
	[zyLevel] [int] NULL,
	[time] [datetime] NOT NULL,
	[isFinished] [bit] NOT NULL,
 CONSTRAINT [PK_richeng] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SignIn]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignIn](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[type] [bit] NOT NULL,
 CONSTRAINT [PK_SIGNIN] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](16) NOT NULL,
	[password] [nvarchar](16) NOT NULL,
	[sex] [bit] NOT NULL,
	[birthday] [datetime] NULL,
	[qq] [bigint] NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](50) NULL,
	[enable] [bit] NULL,
	[jobid] [int] NOT NULL,
	[detail] [text] NULL,
	[idCard] [nvarchar](18) NULL,
	[headImgUrl] [nvarchar](50) NULL,
	[isManager] [bit] NULL,
 CONSTRAINT [PK_USERINFO] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wage]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wage](
	[wid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[bs] [int] NOT NULL,
	[com] [int] NOT NULL,
	[total] [int] NOT NULL,
	[time] [datetime] NOT NULL,
 CONSTRAINT [PK_WAGE] PRIMARY KEY CLUSTERED 
(
	[wid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[worklog]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[worklog](
	[logid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[detail] [text] NOT NULL,
	[time] [datetime] NOT NULL,
 CONSTRAINT [PK_WORKLOG] PRIMARY KEY CLUSTERED 
(
	[logid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ycEmail]    Script Date: 2018/1/9 16:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ycEmail](
	[EID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](60) NOT NULL,
	[detail] [text] NOT NULL,
	[sendtime] [datetime] NOT NULL,
	[writer] [int] NOT NULL,
	[receiver] [int] NOT NULL,
	[isRead] [bit] NOT NULL,
	[isdelete] [bit] NULL,
	[isOwner] [bit] NULL,
 CONSTRAINT [PK_YCEMAIL] PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[departjob] ON 

INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (2, 1, N'总经理', 20000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (3, 2, N'技术总监', 12000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (4, 2, N'技术部员工', 8000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (5, 2, N'技术部经理', 12000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (6, 3, N'销售部总监', 12000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (7, 3, N'销售部经理', 12000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (9, 4, N'人事部员工', 5000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (10, 4, N'人事部经理', 8000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (12, 5, N'后勤部员工', 3000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (13, 6, N'财务部经理', 8000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (14, 6, N'财务部员工', 6000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (20, 2, N'副总监', 15000)
INSERT [dbo].[departjob] ([jobid], [did], [jobname], [dx]) VALUES (22, 5, N'清洁工', 2000)
SET IDENTITY_INSERT [dbo].[departjob] OFF
SET IDENTITY_INSERT [dbo].[department] ON 

INSERT [dbo].[department] ([did], [name]) VALUES (1, N'总经理')
INSERT [dbo].[department] ([did], [name]) VALUES (2, N'技术部')
INSERT [dbo].[department] ([did], [name]) VALUES (3, N'销售部')
INSERT [dbo].[department] ([did], [name]) VALUES (4, N'人事部')
INSERT [dbo].[department] ([did], [name]) VALUES (5, N'后勤部')
INSERT [dbo].[department] ([did], [name]) VALUES (6, N'财务部')
SET IDENTITY_INSERT [dbo].[department] OFF
SET IDENTITY_INSERT [dbo].[Gongggao] ON 

INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (4, 7, N'标题 谢谢谢', N'biaoti ', CAST(N'2018-01-06T11:15:45.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (5, 7, N'gongg', N'neirong', CAST(N'2018-01-06T14:25:36.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (6, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:53.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (7, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:53.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (8, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:53.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (10, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (11, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (12, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (13, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (14, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (15, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (16, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (17, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:54.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (18, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (19, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (20, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (21, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (22, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (23, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (24, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (25, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (26, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:55.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (27, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (28, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (29, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (30, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (31, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (32, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (33, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (34, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (35, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:56.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (36, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (37, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (38, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (39, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (40, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (41, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (42, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (43, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (44, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:57.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (45, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (46, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (47, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (48, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (49, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (50, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (51, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (52, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (53, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:58.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (54, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (55, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (56, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (57, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (58, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (59, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (60, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (61, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (62, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:25:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (63, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (64, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (65, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (66, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (67, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (68, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (69, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (70, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (71, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (72, 7, N'公告', N'即时消息', CAST(N'2018-01-06T14:26:00.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (73, 7, N'jishi', N'jishi', CAST(N'2018-01-06T14:26:37.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (74, 7, N'11', N'111', CAST(N'2018-01-06T14:39:36.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (75, 7, N'111', N'11111', CAST(N'2018-01-06T14:41:28.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (76, 7, N'11', N'111', CAST(N'2018-01-06T14:48:53.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (77, 7, N'11', N'111', CAST(N'2018-01-06T14:54:50.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (78, 7, N'这是标题', N'zheshi tneir ', CAST(N'2018-01-06T14:57:22.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (81, 5, N'11', N'你好', CAST(N'2018-01-06T19:45:09.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (82, 5, N'11', N'你好', CAST(N'2018-01-06T19:48:19.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (83, 7, N'这是标题', N'紧急通知~', CAST(N'2018-01-06T19:49:43.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (84, 5, N'今天马上开会', N'马上开会', CAST(N'2018-01-07T09:52:16.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (85, 5, N'紧急公告', N'紧急', CAST(N'2018-01-08T09:19:09.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (86, 5, N'紧急', N'紧急', CAST(N'2018-01-08T20:35:59.000' AS DateTime))
INSERT [dbo].[Gongggao] ([gid], [uid], [title], [detail], [time]) VALUES (87, 5, N'紧急公告', N'紧急公告', CAST(N'2018-01-09T10:46:52.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Gongggao] OFF
SET IDENTITY_INSERT [dbo].[gongwen] ON 

INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (1, 5, N'这是公文~~~~', CAST(N'2018-01-04T09:32:36.000' AS DateTime), 1, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (2, 5, N'111111', CAST(N'2018-01-04T10:02:20.000' AS DateTime), 1, NULL, N'11')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (3, 7, N'公文', CAST(N'2018-01-04T17:27:10.000' AS DateTime), 0, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (4, 11, N'今天我要请假一天~~', CAST(N'2018-01-07T09:49:33.000' AS DateTime), 1, NULL, N'同意')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (5, 5, N'', CAST(N'2018-01-08T11:12:26.000' AS DateTime), 0, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (6, 5, N'', CAST(N'2018-01-09T10:02:55.000' AS DateTime), 1, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (7, 5, N'我要请假一天', CAST(N'2018-01-09T10:04:16.000' AS DateTime), 0, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (8, 5, N'aaalla', CAST(N'2018-01-09T10:18:43.000' AS DateTime), 1, NULL, N'la')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (9, 11, N'我要请假一天', CAST(N'2018-01-09T10:30:47.000' AS DateTime), 1, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (10, 7, N'', CAST(N'2018-01-09T11:21:18.000' AS DateTime), 1, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (11, 7, N'我要请假一周', CAST(N'2018-01-09T14:38:04.000' AS DateTime), 1, NULL, N'同意')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (12, 5, N'请假半天', CAST(N'2018-01-09T16:15:08.000' AS DateTime), 0, NULL, N'')
INSERT [dbo].[gongwen] ([qid], [uid], [season], [time], [isaccept], [acceptuid], [hk]) VALUES (13, 5, N'请假半天', CAST(N'2018-01-09T16:15:20.000' AS DateTime), 1, NULL, N'')
SET IDENTITY_INSERT [dbo].[gongwen] OFF
SET IDENTITY_INSERT [dbo].[Htgl] ON 

INSERT [dbo].[Htgl] ([hid], [htbh], [uid], [startTime], [endTime], [Detail], [writeTime]) VALUES (23, N'H0003', 7, CAST(N'2018-01-03T00:00:00.000' AS DateTime), CAST(N'2018-01-05T00:00:00.000' AS DateTime), N'合同详情', CAST(N'2017-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Htgl] ([hid], [htbh], [uid], [startTime], [endTime], [Detail], [writeTime]) VALUES (24, N'HT001', 8, CAST(N'2018-01-03T00:00:00.000' AS DateTime), CAST(N'2018-01-04T00:00:00.000' AS DateTime), N'合同', CAST(N'2018-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Htgl] ([hid], [htbh], [uid], [startTime], [endTime], [Detail], [writeTime]) VALUES (25, N'H-001', 5, CAST(N'2018-01-10T00:00:00.000' AS DateTime), CAST(N'2018-01-08T00:00:00.000' AS DateTime), N'11', CAST(N'2018-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Htgl] ([hid], [htbh], [uid], [startTime], [endTime], [Detail], [writeTime]) VALUES (26, N'H-001', 12, CAST(N'2018-04-19T00:00:00.000' AS DateTime), CAST(N'2018-04-28T00:00:00.000' AS DateTime), N'xxxx', CAST(N'2018-01-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Htgl] ([hid], [htbh], [uid], [startTime], [endTime], [Detail], [writeTime]) VALUES (27, N'H-110', 7, CAST(N'2018-01-06T00:00:00.000' AS DateTime), CAST(N'2019-02-07T00:00:00.000' AS DateTime), N'这是合同', CAST(N'2018-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Htgl] ([hid], [htbh], [uid], [startTime], [endTime], [Detail], [writeTime]) VALUES (28, N'H-002', 7, CAST(N'2018-01-04T00:00:00.000' AS DateTime), CAST(N'2018-01-05T00:00:00.000' AS DateTime), N'劳动合同', CAST(N'2018-01-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Htgl] OFF
SET IDENTITY_INSERT [dbo].[Jxgl] ON 

INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(1 AS Numeric(18, 0)), 5, 2000, NULL, CAST(N'2018-01-06T09:39:08.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(2 AS Numeric(18, 0)), 5, 2000, NULL, CAST(N'2018-01-06T09:39:25.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(3 AS Numeric(18, 0)), 6, 2000, NULL, CAST(N'2018-01-06T09:39:36.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(4 AS Numeric(18, 0)), 6, 660, NULL, CAST(N'2018-01-06T09:39:46.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(5 AS Numeric(18, 0)), 7, 500, NULL, CAST(N'2018-01-06T09:39:57.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(6 AS Numeric(18, 0)), 7, 111, N'11', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(7 AS Numeric(18, 0)), 14, 5000, N'11', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(8 AS Numeric(18, 0)), 7, 50000, N'表现好', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(9 AS Numeric(18, 0)), 8, 2000, N'表现好', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(10 AS Numeric(18, 0)), 11, 1000, N'表现好', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(11 AS Numeric(18, 0)), 16, 500, N'111', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Jxgl] ([jid], [uid], [yj], [detail], [time]) VALUES (CAST(12 AS Numeric(18, 0)), 5, 2000, N'表现好', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Jxgl] OFF
SET IDENTITY_INSERT [dbo].[richeng] ON 

INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (6, 7, N'这是详情', 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (7, 7, N'这是详情', 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (13, 7, N'这是', 2, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (15, 7, N'zheshi ', 1, CAST(N'2018-01-11T09:11:38.000' AS DateTime), 0)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (18, 5, N'zzz', 1, CAST(N'2018-01-03T16:39:56.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (19, 8, N'今天我要去约会', 3, CAST(N'2018-01-10T18:33:51.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (20, 11, N'今天要约会', 3, CAST(N'2018-01-18T14:48:07.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (21, 11, N'约会吃饭', 3, CAST(N'2018-01-03T08:23:30.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (22, 11, N'打球', 2, CAST(N'2018-01-19T11:26:59.000' AS DateTime), 0)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (24, 5, N'明天开会', 3, CAST(N'2018-02-07T16:11:25.000' AS DateTime), 1)
INSERT [dbo].[richeng] ([rid], [uid], [detail], [zyLevel], [time], [isFinished]) VALUES (25, 5, N'开会', 3, CAST(N'2018-01-17T16:12:46.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[richeng] OFF
SET IDENTITY_INSERT [dbo].[SignIn] ON 

INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (11, 5, CAST(N'2018-01-04T14:13:09.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (12, 5, CAST(N'2018-01-04T16:25:13.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (13, 7, CAST(N'2018-01-04T17:09:25.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (14, 7, CAST(N'2018-01-04T17:09:31.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (15, 7, CAST(N'2018-01-05T11:37:49.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (16, 7, CAST(N'2018-01-05T11:37:50.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (17, 5, CAST(N'2018-01-05T15:34:07.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (18, 17, CAST(N'2018-01-05T16:35:39.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (19, 5, CAST(N'2018-01-05T16:50:35.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (20, 7, CAST(N'2018-01-06T08:58:49.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (21, 7, CAST(N'2018-01-06T13:55:15.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (22, 5, CAST(N'2018-01-06T18:42:08.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (23, 5, CAST(N'2018-01-06T19:10:31.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (24, 8, CAST(N'2018-01-06T19:33:20.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (25, 8, CAST(N'2018-01-06T19:33:49.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (26, 11, CAST(N'2018-01-07T09:47:50.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (27, 11, CAST(N'2018-01-07T09:47:55.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (28, 5, CAST(N'2018-01-07T10:49:22.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (29, 5, CAST(N'2018-01-07T10:49:24.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (30, 5, CAST(N'2018-01-08T08:20:02.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (31, 5, CAST(N'2018-01-08T17:07:36.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (32, 5, CAST(N'2018-01-09T10:11:37.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (33, 5, CAST(N'2018-01-09T10:15:09.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (34, 11, CAST(N'2018-01-09T10:20:30.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (35, 11, CAST(N'2018-01-09T10:24:48.000' AS DateTime), 0)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (36, 7, CAST(N'2018-01-09T14:23:49.000' AS DateTime), 1)
INSERT [dbo].[SignIn] ([sid], [uid], [time], [type]) VALUES (37, 7, CAST(N'2018-01-09T14:34:47.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[SignIn] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (5, N'邱于涵', N'admin', 1, CAST(N'2018-01-03T10:22:31.000' AS DateTime), 1031893464, N'18381506390', N'四川省峨眉山', 1, 2, NULL, N'5151561561515151', N'./img/head/3.png', 1)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (6, N'何建均', N'admin', 0, CAST(N'2055-01-03T10:24:37.000' AS DateTime), 12132, N'15982251322', N'四川省宜宾市', 1, 5, NULL, N'15655165155151', N'./img/head/hejianjuntouxiang.jpg', 1)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (7, N'潘佳', N'admin', 0, CAST(N'2018-01-03T10:25:19.000' AS DateTime), 1347118567, N'15244914152', N'四川省遂宁市', 1, 2, NULL, N'15151515', NULL, 1)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (8, N'罗乐', N'admin', 1, CAST(N'2018-01-02T00:00:00.000' AS DateTime), 1031896464, N'18381506390', N'四川省巴中市', 1, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (11, N'张益达', N'admin', 0, CAST(N'2018-01-03T00:00:00.000' AS DateTime), 9999999999, N'15982251322', N'四川省宜宾市', 1, 4, NULL, NULL, N'./img/head/kobe.jpg', NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (12, N'何建均||', N'151080', 1, CAST(N'2018-01-08T00:00:00.000' AS DateTime), 1212313, N'15244914564', N'西藏昌都', 1, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (13, N'何建均3·', N'120120', 1, CAST(N'2018-01-03T00:00:00.000' AS DateTime), 2454, N'13889159685', N'四川省崇州市', 1, 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (14, N'何水', N'admin', 1, CAST(N'2018-01-16T00:00:00.000' AS DateTime), 123132323, N'18155615515', N'四川省成都市', 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (16, N'杨智明', N'admin', 0, CAST(N'2018-01-01T00:00:00.000' AS DateTime), 103189346, N'15155454599', N'四川省眉山市', 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (17, N'宋辉', N'123456789', 1, CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1515456, N'15165446259', N'四川资中 ', 1, 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (18, N'唐懿', N'ty', 0, CAST(N'2018-01-03T00:00:00.000' AS DateTime), 1313, N'17760456329', N'四川省成都市青白江', 1, 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([uid], [name], [password], [sex], [birthday], [qq], [phone], [address], [enable], [jobid], [detail], [idCard], [headImgUrl], [isManager]) VALUES (21, N'陈小春', N'admin', 1, CAST(N'2018-01-03T00:00:00.000' AS DateTime), 12354568, N'15982251322', N'四川省宜宾市', 1, 4, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
SET IDENTITY_INSERT [dbo].[worklog] ON 

INSERT [dbo].[worklog] ([logid], [uid], [detail], [time]) VALUES (14, 5, N'动次打次
', CAST(N'2018-01-04T11:44:23.000' AS DateTime))
INSERT [dbo].[worklog] ([logid], [uid], [detail], [time]) VALUES (15, 11, N'今天做了很多事', CAST(N'2018-01-07T09:49:45.000' AS DateTime))
INSERT [dbo].[worklog] ([logid], [uid], [detail], [time]) VALUES (1016, 5, N'', CAST(N'2018-01-09T10:19:09.000' AS DateTime))
INSERT [dbo].[worklog] ([logid], [uid], [detail], [time]) VALUES (1017, 11, N'完成工作', CAST(N'2018-01-09T10:31:08.000' AS DateTime))
INSERT [dbo].[worklog] ([logid], [uid], [detail], [time]) VALUES (1018, 11, N'没完成工作', CAST(N'2018-01-09T10:31:19.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[worklog] OFF
SET IDENTITY_INSERT [dbo].[ycEmail] ON 

INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (2, N'标题', N'内容', CAST(N'2018-01-04T20:46:43.130' AS DateTime), 5, 6, 1, 0, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (3, N'这是邮件标题', N'这是邮件内容', CAST(N'2018-01-05T09:58:31.000' AS DateTime), 7, 5, 1, 0, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (6, N'标题1111', N'neirong 22222222222222222', CAST(N'2018-01-05T10:16:55.953' AS DateTime), 5, 7, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (7, N'这是我', N'shdwkdsjkbcjkbdc', CAST(N'2018-01-05T10:28:41.750' AS DateTime), 7, 5, 1, 1, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (8, N'这是我', N'shdwkdsjkbcjkbdc', CAST(N'2018-01-05T10:28:41.750' AS DateTime), 7, 5, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (12, N'邮件标题你', N'邮件内容xxxxxxxxxxxxxxxxxxxxxxxxxxxx', CAST(N'2018-01-05T11:22:56.400' AS DateTime), 5, 7, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (13, N'标题~', N'内容~~~~~~~~~', CAST(N'2018-01-05T11:24:04.083' AS DateTime), 5, 7, 0, 1, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (14, N'标题~', N'内容~~~~~~~~~', CAST(N'2018-01-05T11:24:04.083' AS DateTime), 5, 7, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (15, N'标题~', N'内容~~~~~~~~~', CAST(N'2018-01-05T11:24:06.637' AS DateTime), 5, 7, 1, 0, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (16, N'标题~', N'内容~~~~~~~~~', CAST(N'2018-01-05T11:24:06.640' AS DateTime), 5, 7, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (18, N'这是标题', N'哈哈哈', CAST(N'2018-01-05T15:35:25.847' AS DateTime), 5, 7, 1, 1, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (19, N'傻逼傻逼晒比', N'傻逼晒傻逼傻逼傻逼傻逼', CAST(N'2018-01-05T16:28:53.710' AS DateTime), 7, 6, 0, 0, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (20, N'傻逼傻逼晒比', N'傻逼晒傻逼傻逼傻逼傻逼', CAST(N'2018-01-05T16:28:53.710' AS DateTime), 7, 6, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (21, N'建均', N'建均', CAST(N'2018-01-05T16:36:18.473' AS DateTime), 17, 12, 0, 0, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (22, N'建均', N'建均', CAST(N'2018-01-05T16:36:18.477' AS DateTime), 17, 12, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (26, N'黄色', N'藏金控', CAST(N'2018-01-09T10:15:50.117' AS DateTime), 5, 5, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (28, N'年会活动', N'吃饭 喝酒', CAST(N'2018-01-09T10:28:26.980' AS DateTime), 11, 7, 0, 0, 1)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (29, N'标题', N'内容', CAST(N'2018-01-09T16:08:41.090' AS DateTime), 11, 5, 1, 0, 0)
INSERT [dbo].[ycEmail] ([EID], [Title], [detail], [sendtime], [writer], [receiver], [isRead], [isdelete], [isOwner]) VALUES (30, N'标题', N'内容', CAST(N'2018-01-09T16:08:41.123' AS DateTime), 11, 5, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[ycEmail] OFF
ALTER TABLE [dbo].[UserInfo] ADD  DEFAULT ((1)) FOR [sex]
GO
ALTER TABLE [dbo].[UserInfo] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[departjob]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTJO_REFERENCE_DEPARTME] FOREIGN KEY([did])
REFERENCES [dbo].[department] ([did])
GO
ALTER TABLE [dbo].[departjob] CHECK CONSTRAINT [FK_DEPARTJO_REFERENCE_DEPARTME]
GO
ALTER TABLE [dbo].[Gongggao]  WITH CHECK ADD  CONSTRAINT [FK_GONGGGAO_REFERENCE_USERINFO] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[Gongggao] CHECK CONSTRAINT [FK_GONGGGAO_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[gongwen]  WITH CHECK ADD  CONSTRAINT [FK_GONGWEN_REFERENCE_USERINFO] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[gongwen] CHECK CONSTRAINT [FK_GONGWEN_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[Htgl]  WITH CHECK ADD  CONSTRAINT [FK_HTGL_REFERENCE_USERINFO] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[Htgl] CHECK CONSTRAINT [FK_HTGL_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[Jxgl]  WITH CHECK ADD  CONSTRAINT [FK_JXGL_REFERENCE_USERINFO] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[Jxgl] CHECK CONSTRAINT [FK_JXGL_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[richeng]  WITH CHECK ADD  CONSTRAINT [FK_UID1] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[richeng] CHECK CONSTRAINT [FK_UID1]
GO
ALTER TABLE [dbo].[SignIn]  WITH CHECK ADD  CONSTRAINT [FK_SIGNIN_REFERENCE_USERINFO] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[SignIn] CHECK CONSTRAINT [FK_SIGNIN_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_USERINFO_REFERENCE_DEPARTJO] FOREIGN KEY([jobid])
REFERENCES [dbo].[departjob] ([jobid])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_USERINFO_REFERENCE_DEPARTJO]
GO
ALTER TABLE [dbo].[Wage]  WITH CHECK ADD  CONSTRAINT [FK_WAGE_REFERENCE_USERINFO] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[Wage] CHECK CONSTRAINT [FK_WAGE_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[worklog]  WITH CHECK ADD  CONSTRAINT [FK_WORKLOG_REFERENCE_USERINFO] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[worklog] CHECK CONSTRAINT [FK_WORKLOG_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[ycEmail]  WITH CHECK ADD  CONSTRAINT [FK_YCEMAIL_REFERENCE_USERINFO] FOREIGN KEY([receiver])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[ycEmail] CHECK CONSTRAINT [FK_YCEMAIL_REFERENCE_USERINFO]
GO
ALTER TABLE [dbo].[ycEmail]  WITH CHECK ADD  CONSTRAINT [FK_YCEMAIL_REFERENCE_USERINFO11] FOREIGN KEY([receiver])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[ycEmail] CHECK CONSTRAINT [FK_YCEMAIL_REFERENCE_USERINFO11]
GO
ALTER TABLE [dbo].[ycEmail]  WITH CHECK ADD  CONSTRAINT [FK_YCEMAIL_REFERENCE_USERINFO12] FOREIGN KEY([writer])
REFERENCES [dbo].[UserInfo] ([uid])
GO
ALTER TABLE [dbo].[ycEmail] CHECK CONSTRAINT [FK_YCEMAIL_REFERENCE_USERINFO12]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 部门内，职位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'departjob'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gongggao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gongwen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合同管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Htgl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绩效管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Jxgl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签到表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SignIn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Wage'
GO
USE [master]
GO
ALTER DATABASE [ycfzOA] SET  READ_WRITE 
GO
