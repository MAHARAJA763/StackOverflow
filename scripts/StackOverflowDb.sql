USE [master]
GO
/****** Object:  Database [StackOverflowDb]    Script Date: 21-02-2020 18:37:49 ******/
CREATE DATABASE [StackOverflowDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StackOverflowDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQL2017\MSSQL\DATA\StackOverflowDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StackOverflowDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQL2017\MSSQL\DATA\StackOverflowDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [StackOverflowDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StackOverflowDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StackOverflowDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StackOverflowDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StackOverflowDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StackOverflowDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StackOverflowDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [StackOverflowDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StackOverflowDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StackOverflowDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StackOverflowDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StackOverflowDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StackOverflowDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StackOverflowDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StackOverflowDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StackOverflowDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StackOverflowDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StackOverflowDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StackOverflowDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StackOverflowDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StackOverflowDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StackOverflowDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StackOverflowDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StackOverflowDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StackOverflowDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StackOverflowDb] SET  MULTI_USER 
GO
ALTER DATABASE [StackOverflowDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StackOverflowDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StackOverflowDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StackOverflowDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StackOverflowDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StackOverflowDb] SET QUERY_STORE = OFF
GO
USE [StackOverflowDb]
GO
/****** Object:  Table [dbo].[QuestionVotes]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionVotes](
	[QuestionVoteId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionUpVote] [int] NULL,
	[QuestionDownVote] [int] NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK_QuestionVotes] PRIMARY KEY CLUSTERED 
(
	[QuestionVoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionTags]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionTags](
	[QuestionTagId] [int] IDENTITY(1,1) NOT NULL,
	[TagId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK_QuestionTags_1] PRIMARY KEY CLUSTERED 
(
	[QuestionTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Password] [varchar](20) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionTitle] [varchar](max) NOT NULL,
	[QuestionBody] [varchar](max) NOT NULL,
	[QuestionDateTime] [datetimeoffset](7) NOT NULL,
	[QuestionAuthorId] [int] NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vQuestions]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vQuestions]
AS
SELECT        dbo.Questions.QuestionId, dbo.Questions.QuestionTitle, dbo.Questions.QuestionBody, dbo.Questions.QuestionDateTime, dbo.Users.DisplayName, dbo.QuestionTags.QuestionTagId, dbo.QuestionVotes.QuestionUpVote, 
                         dbo.QuestionVotes.QuestionDownVote
FROM            dbo.Questions INNER JOIN
                         dbo.QuestionTags ON dbo.Questions.QuestionId = dbo.QuestionTags.QuestionId INNER JOIN
                         dbo.QuestionVotes ON dbo.Questions.QuestionId = dbo.QuestionVotes.QuestionId INNER JOIN
                         dbo.Users ON dbo.Questions.QuestionAuthorId = dbo.Users.UserId
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserDetailId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NULL,
	[ProfileImage] [varchar](50) NULL,
	[AboutMe] [varchar](max) NULL,
	[Location] [varchar](50) NULL,
	[WebsitLink] [varchar](max) NULL,
	[GithubUsername] [varchar](50) NULL,
	[TwitterUserName] [varchar](50) NULL,
	[UserOccupationId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reputations]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reputations](
	[ReputationId] [int] IDENTITY(1,1) NOT NULL,
	[Reputation] [int] NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Reputations] PRIMARY KEY CLUSTERED 
(
	[ReputationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[ScoreId] [int] IDENTITY(1,1) NOT NULL,
	[Score] [int] NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Scores] PRIMARY KEY CLUSTERED 
(
	[ScoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vUserProfiles]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserProfiles]
AS
SELECT        dbo.Users.UserId, dbo.Users.DisplayName, dbo.Users.Email, dbo.UserDetails.AboutMe, dbo.UserDetails.Location, dbo.UserDetails.WebsitLink, dbo.UserDetails.TwitterUserName, dbo.UserDetails.GithubUsername, 
                         dbo.Scores.Score, dbo.Reputations.Reputation, dbo.UserDetails.ProfileImage
FROM            dbo.Reputations INNER JOIN
                         dbo.Users ON dbo.Reputations.UserId = dbo.Users.UserId INNER JOIN
                         dbo.Scores ON dbo.Users.UserId = dbo.Scores.UserId CROSS JOIN
                         dbo.UserDetails
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerBody] [varchar](max) NOT NULL,
	[AnswerDateTime] [datetimeoffset](7) NOT NULL,
	[AnswerAuthorId] [int] NOT NULL,
	[isAnswerAccepted] [bit] NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerVotes]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerVotes](
	[AnswerVoteId] [int] IDENTITY(1,1) NOT NULL,
	[AnswerUpVote] [int] NOT NULL,
	[AnswerDownVote] [int] NOT NULL,
	[AnswerId] [int] NOT NULL,
 CONSTRAINT [PK_AnswerVotes] PRIMARY KEY CLUSTERED 
(
	[AnswerVoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vQuestionDetails]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vQuestionDetails]
AS
SELECT        dbo.Questions.QuestionId, dbo.Answers.AnswerId, dbo.Answers.AnswerBody, dbo.Answers.AnswerDateTime, dbo.Answers.AnswerAuthorId, dbo.Answers.isAnswerAccepted, dbo.AnswerVotes.AnswerUpVote, 
                         dbo.AnswerVotes.AnswerDownVote, dbo.Questions.QuestionTitle, dbo.Questions.QuestionBody, dbo.Questions.QuestionDateTime, dbo.Questions.QuestionAuthorId, dbo.QuestionVotes.QuestionUpVote, 
                         dbo.QuestionVotes.QuestionDownVote, dbo.Users.UserId, dbo.Users.DisplayName
FROM            dbo.Answers INNER JOIN
                         dbo.AnswerVotes ON dbo.Answers.AnswerId = dbo.AnswerVotes.AnswerId INNER JOIN
                         dbo.Questions ON dbo.Answers.QuestionId = dbo.Questions.QuestionId INNER JOIN
                         dbo.QuestionVotes ON dbo.Questions.QuestionId = dbo.QuestionVotes.QuestionId INNER JOIN
                         dbo.Users ON dbo.Answers.AnswerAuthorId = dbo.Users.UserId AND dbo.Questions.QuestionAuthorId = dbo.Users.UserId
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [varchar](50) NOT NULL,
	[TagDetail] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vTags]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTags]
AS
SELECT        dbo.QuestionTags.TagId, dbo.Tags.TagName, dbo.Tags.TagDetail
FROM            dbo.QuestionTags INNER JOIN
                         dbo.Tags ON dbo.QuestionTags.QuestionTagId = dbo.Tags.TagId
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [varchar](max) NOT NULL,
	[JobDescription] [varchar](max) NOT NULL,
	[JobDesignation] [varchar](50) NOT NULL,
	[PayScale] [varchar](50) NOT NULL,
	[JobType] [varchar](50) NOT NULL,
	[JobApplyLink] [varchar](50) NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobLocations]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobLocations](
	[JobLocationId] [int] IDENTITY(1,1) NOT NULL,
	[JobLocationName] [varchar](50) NOT NULL,
	[JobId] [int] NOT NULL,
 CONSTRAINT [PK_JobLocations] PRIMARY KEY CLUSTERED 
(
	[JobLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPreferences]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPreferences](
	[JobPreferenceId] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[JobTagId] [int] NOT NULL,
 CONSTRAINT [PK_JobPreferences] PRIMARY KEY CLUSTERED 
(
	[JobPreferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTags]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTags](
	[JobTagId] [int] IDENTITY(1,1) NOT NULL,
	[JobTagName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_JobTags] PRIMARY KEY CLUSTERED 
(
	[JobTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[CompanyContact] [varchar](50) NOT NULL,
	[CompanyLocation] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vJobs]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vJobs]
AS
SELECT        dbo.Companies.CompanyName, dbo.Companies.CompanyContact, dbo.Companies.CompanyLocation, dbo.JobLocations.JobLocationName, dbo.Jobs.JobId, dbo.Jobs.JobTitle, dbo.Jobs.JobDescription, dbo.Jobs.JobDesignation, 
                         dbo.Jobs.PayScale, dbo.Jobs.JobType, dbo.Jobs.JobApplyLink, dbo.JobTags.JobTagName
FROM            dbo.Companies INNER JOIN
                         dbo.Jobs ON dbo.Companies.CompanyId = dbo.Jobs.CompanyId INNER JOIN
                         dbo.JobLocations ON dbo.Jobs.JobId = dbo.JobLocations.JobId INNER JOIN
                         dbo.JobPreferences ON dbo.Jobs.JobId = dbo.JobPreferences.JobId INNER JOIN
                         dbo.JobTags ON dbo.JobPreferences.JobTagId = dbo.JobTags.JobTagId
GO
/****** Object:  Table [dbo].[ApplicationObjects]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationObjects](
	[ApplicationObjectId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectName] [varchar](50) NOT NULL,
	[ApplicationObjectTypeId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationObjects] PRIMARY KEY CLUSTERED 
(
	[ApplicationObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationObjectTypes]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationObjectTypes](
	[ApplicationObjectTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationObjectTypes] PRIMARY KEY CLUSTERED 
(
	[ApplicationObjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pivileges]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pivileges](
	[PrivilegeId] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeName] [varchar](50) NOT NULL,
	[PrivilegeTypeId] [int] NOT NULL,
	[RequiredReputation] [int] NOT NULL,
 CONSTRAINT [PK_Pivileges] PRIMARY KEY CLUSTERED 
(
	[PrivilegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentUsers]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentUsers](
	[StudentUserId] [int] IDENTITY(1,1) NOT NULL,
	[Degree] [varchar](50) NOT NULL,
	[UniversityName] [varchar](50) NOT NULL,
	[From] [varchar](10) NOT NULL,
	[To] [varchar](10) NOT NULL,
	[UserJobPreferenceId] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_StudentUsers] PRIMARY KEY CLUSTERED 
(
	[StudentUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserJobPreferences]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserJobPreferences](
	[UserJobPreferenceId] [int] NOT NULL,
	[JobTagId] [int] NOT NULL,
	[UserId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPrivileges]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPrivileges](
	[UserPrivilegeId] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserPrivileges] PRIMARY KEY CLUSTERED 
(
	[UserPrivilegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkingUsers]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingUsers](
	[WorkingUserId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[JoiningDate] [varchar](10) NOT NULL,
	[LastWorking] [varchar](10) NOT NULL,
	[UserJobPreferenceId] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_WorkingUsers] PRIMARY KEY CLUSTERED 
(
	[WorkingUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users]    Script Date: 21-02-2020 18:37:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users] ON [dbo].[Users]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF_Answers_isAnswerAccepted]  DEFAULT ((0)) FOR [isAnswerAccepted]
GO
ALTER TABLE [dbo].[AnswerVotes] ADD  CONSTRAINT [DF_AnswerVotes_AnswerUpVote]  DEFAULT ((0)) FOR [AnswerUpVote]
GO
ALTER TABLE [dbo].[AnswerVotes] ADD  CONSTRAINT [DF_AnswerVotes_AnswerDownVote]  DEFAULT ((0)) FOR [AnswerDownVote]
GO
ALTER TABLE [dbo].[QuestionVotes] ADD  CONSTRAINT [DF_QuestionVotes_QuestionUpVote]  DEFAULT ((0)) FOR [QuestionUpVote]
GO
ALTER TABLE [dbo].[QuestionVotes] ADD  CONSTRAINT [DF_QuestionVotes_QuestionDownVote]  DEFAULT ((0)) FOR [QuestionDownVote]
GO
ALTER TABLE [dbo].[Reputations] ADD  CONSTRAINT [DF_Reputations_Reputation]  DEFAULT ((1)) FOR [Reputation]
GO
ALTER TABLE [dbo].[Scores] ADD  CONSTRAINT [DF_Scores_Score]  DEFAULT ((0)) FOR [Score]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Users] FOREIGN KEY([AnswerAuthorId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Users]
GO
ALTER TABLE [dbo].[AnswerVotes]  WITH CHECK ADD  CONSTRAINT [FK_AnswerVotes_Answers] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answers] ([AnswerId])
GO
ALTER TABLE [dbo].[AnswerVotes] CHECK CONSTRAINT [FK_AnswerVotes_Answers]
GO
ALTER TABLE [dbo].[ApplicationObjects]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationObjects_ApplicationObjectTypes] FOREIGN KEY([ApplicationObjectTypeId])
REFERENCES [dbo].[ApplicationObjectTypes] ([ApplicationObjectTypeId])
GO
ALTER TABLE [dbo].[ApplicationObjects] CHECK CONSTRAINT [FK_ApplicationObjects_ApplicationObjectTypes]
GO
ALTER TABLE [dbo].[JobLocations]  WITH CHECK ADD  CONSTRAINT [FK_JobLocations_Jobs] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([JobId])
GO
ALTER TABLE [dbo].[JobLocations] CHECK CONSTRAINT [FK_JobLocations_Jobs]
GO
ALTER TABLE [dbo].[JobPreferences]  WITH CHECK ADD  CONSTRAINT [FK_JobPreferences_Jobs] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([JobId])
GO
ALTER TABLE [dbo].[JobPreferences] CHECK CONSTRAINT [FK_JobPreferences_Jobs]
GO
ALTER TABLE [dbo].[JobPreferences]  WITH CHECK ADD  CONSTRAINT [FK_JobPreferences_JobTags] FOREIGN KEY([JobTagId])
REFERENCES [dbo].[JobTags] ([JobTagId])
GO
ALTER TABLE [dbo].[JobPreferences] CHECK CONSTRAINT [FK_JobPreferences_JobTags]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([CompanyId])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Companies]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Users] FOREIGN KEY([QuestionAuthorId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Users]
GO
ALTER TABLE [dbo].[QuestionTags]  WITH CHECK ADD  CONSTRAINT [FK_QuestionTags_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[QuestionTags] CHECK CONSTRAINT [FK_QuestionTags_Questions]
GO
ALTER TABLE [dbo].[QuestionTags]  WITH CHECK ADD  CONSTRAINT [FK_QuestionTags_Tags] FOREIGN KEY([QuestionTagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[QuestionTags] CHECK CONSTRAINT [FK_QuestionTags_Tags]
GO
ALTER TABLE [dbo].[QuestionVotes]  WITH CHECK ADD  CONSTRAINT [FK_QuestionVotes_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[QuestionVotes] CHECK CONSTRAINT [FK_QuestionVotes_Questions]
GO
ALTER TABLE [dbo].[Reputations]  WITH CHECK ADD  CONSTRAINT [FK_Reputations_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Reputations] CHECK CONSTRAINT [FK_Reputations_Users]
GO
ALTER TABLE [dbo].[Scores]  WITH CHECK ADD  CONSTRAINT [FK_Scores_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Scores] CHECK CONSTRAINT [FK_Scores_Users]
GO
ALTER TABLE [dbo].[UserPrivileges]  WITH CHECK ADD  CONSTRAINT [FK_UserPrivileges_Pivileges] FOREIGN KEY([PrivilegeId])
REFERENCES [dbo].[Pivileges] ([PrivilegeId])
GO
ALTER TABLE [dbo].[UserPrivileges] CHECK CONSTRAINT [FK_UserPrivileges_Pivileges]
GO
ALTER TABLE [dbo].[UserPrivileges]  WITH CHECK ADD  CONSTRAINT [FK_UserPrivileges_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserPrivileges] CHECK CONSTRAINT [FK_UserPrivileges_Users]
GO
/****** Object:  StoredProcedure [dbo].[spAnswerAccepted]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAnswerAccepted]
	-- Add the parameters for the stored procedure here
	@AnswerId as int,
	@UserId as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	update Answers set isAnswerAccepted=1;
	declare @reputation as int
	select @reputation= Reputation from Reputations where UserId=@UserId
	set @reputation=@reputation+15
	update Reputations set Reputation=@reputation
	
    -- Insert statements for procedure here
END
GO
/****** Object:  StoredProcedure [dbo].[spAnswerVoted]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAnswerVoted] 
	-- Add the parameters for the stored procedure here
	@AnswerId as int,
	@Vote as int,
	@UserId as int,
	@downvote as int output,
	@upvote as int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @reputation as int
	declare @score as int
	select @downvote = AnswerDownVote from AnswerVotes where AnswerId=@AnswerId
	select @upvote = AnswerUpVote from AnswerVotes where AnswerId=@AnswerId
	select @reputation=Reputation from Reputations where UserId=@UserId
	select @score=Score from Scores where UserId = @UserId
	if @Vote = 0
	begin
		set @downvote = @downvote+1
		set @reputation=@reputation-2
		update AnswerVotes set AnswerDownVote=@downvote where AnswerId=@AnswerId
		update Reputations set Reputation=@reputation where UserId=@UserId 
	end
	else
	begin
		set @upvote = @upvote+1
		set @score=+1
		set @reputation=@reputation+10
		update AnswerVotes set AnswerUpVote=@upvote where AnswerId=@AnswerId
		update Reputations set Reputation=@reputation where UserId=@UserId 
		update Scores set Score=@score where UserId=@UserId
	end
	select @downvote = AnswerDownVote from AnswerVotes where AnswerId=@AnswerId
	select @upvote = AnswerUpVote from AnswerVotes where AnswerId=@AnswerId
	declare @total as int
	set @total = @upvote-@downvote
	select @downvote as downvote
	select @upvote as upvote
	select @total as total
END
GO
/****** Object:  StoredProcedure [dbo].[spGetJobPreferenceId]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetJobPreferenceId]
	-- Add the parameters for the stored procedure here
	@JobTagName as varchar(50),
	@JobTagId as int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select @JobTagId=JobTagId from JobTags where JobTagName=@JobTagName

END
GO
/****** Object:  StoredProcedure [dbo].[spGetTagId]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetTagId] 
	-- Add the parameters for the stored procedure here
	@TagName as varchar(50),
	@TagId as int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select @TagId = TagId from Tags where TagName=@TagName
	if @TagId is null
	
	begin
		set @TagId=0;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertAnswer]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertAnswer] 
	-- Add the parameters for the stored procedure here
	@QuestionId as int,
	@AnswerBody as varchar(max),
	@AnswerAuthorId as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Answers(QuestionId,AnswerBody,AnswerAuthorId,AnswerDateTime) values (@QuestionId,@AnswerBody,@AnswerAuthorId,GETDATE())
	declare @AnswerId as int
	select @AnswerId = AnswerId from Answers where QuestionId=@QuestionId order by AnswerDateTime;
	insert into AnswerVotes (AnswerId)values(@AnswerId)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertQuestion]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertQuestion] 
	-- Add the parameters for the stored procedure here
	@QuestionTitle as varchar(max),
	@QuestionBody as varchar(max),
	@QuestionAuthorId as int,
	@QuestionId as int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into Questions(QuestionTitle,QuestionBody,QuestionAuthorId,QuestionDateTime) values (@QuestionTitle,@QuestionBody,@QuestionAuthorId,getdate())
	select @QuestionId = QuestionId from Questions order by QuestionDateTime;

	insert into QuestionVotes (QuestionId) values(@QuestionId)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertUser]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertUser] 
	-- Add the parameters for the stored procedure here
	@Email as varchar(50),
	@Password as varchar(20),
	@DisplayName as varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Users (Email,Password,DisplayName) values (@Email,@Password,@DisplayName)
	declare @UserId as int
	select @UserId= UserId from Users order by UserId
	insert into UserDetails (UserId) values (@UserId)
	insert into Reputations (UserId) values (@UserId)
	insert into Scores (UserId) values (@UserId)
END
GO
/****** Object:  StoredProcedure [dbo].[spQuestionVoted]    Script Date: 21-02-2020 18:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spQuestionVoted] 
	-- Add the parameters for the stored procedure here
	@QuestionId as int,
	@Vote as int,
	@downvote as int output,
	@upvote as int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select @downvote = QuestionDownVote from QuestionVotes where QuestionId=@QuestionId
	select @upvote = QuestionUpVote from QuestionVotes where QuestionId=@QuestionId
	if @Vote = 0
	begin
		set @downvote = @downvote+1
		update QuestionVotes set QuestionDownVote=@downvote where QuestionId=@QuestionId
	end
	else
	begin
		set @upvote = @upvote+1
		update QuestionVotes set QuestionUpVote=@upvote where QuestionId=@QuestionId
	end
	select @downvote = QuestionDownVote from QuestionVotes where QuestionId=@QuestionId
	select @upvote = QuestionUpVote from QuestionVotes where QuestionId=@QuestionId
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Companies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobLocations"
            Begin Extent = 
               Top = 6
               Left = 263
               Bottom = 119
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobPreferences"
            Begin Extent = 
               Top = 6
               Left = 486
               Bottom = 119
               Right = 659
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Jobs"
            Begin Extent = 
               Top = 6
               Left = 697
               Bottom = 136
               Right = 867
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "JobTags"
            Begin Extent = 
               Top = 6
               Left = 905
               Bottom = 102
               Right = 1075
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         O' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vJobs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'r = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vJobs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vJobs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Answers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AnswerVotes"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 136
               Right = 445
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Questions"
            Begin Extent = 
               Top = 6
               Left = 483
               Bottom = 136
               Right = 670
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "QuestionVotes"
            Begin Extent = 
               Top = 6
               Left = 708
               Bottom = 136
               Right = 900
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 938
               Bottom = 136
               Right = 1108
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vQuestionDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vQuestionDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vQuestionDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Questions"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "QuestionTags"
            Begin Extent = 
               Top = 6
               Left = 263
               Bottom = 119
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "QuestionVotes"
            Begin Extent = 
               Top = 6
               Left = 471
               Bottom = 136
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 701
               Bottom = 136
               Right = 871
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vQuestions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vQuestions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "QuestionTags"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tags"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vTags'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vTags'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Reputations"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Scores"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserDetails"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 638
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 676
               Bottom = 136
               Right = 846
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vUserProfiles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vUserProfiles'
GO
USE [master]
GO
ALTER DATABASE [StackOverflowDb] SET  READ_WRITE 
GO
