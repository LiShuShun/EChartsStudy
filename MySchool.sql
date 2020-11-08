
USE [MySchool]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 2019/9/23 10:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Result]    Script Date: 2019/9/23 10:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentNo] [nvarchar](50) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[StudentResult] [int] NULL,
	[ExamDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2019/9/23 10:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentNo] [nvarchar](50) NOT NULL,
	[LoginPwd] [nvarchar](20) NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[Sex] [char](2) NOT NULL,
	[GradeId] [int] NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[BornDate] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2019/9/23 10:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](20) NOT NULL,
	[ClassHour] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (1, N'S1')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (2, N'S2')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (3, N'Y2')
SET IDENTITY_INSERT [dbo].[Grade] OFF
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (1, N'S1201302001', 1, 80, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (2, N'S1201302002', 1, 45, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (3, N'S1201302001', 2, 90, CAST(0xA25B0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (5, N'S1201302002', 2, 60, CAST(0xA25B0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (12, N'S2102001', 3, 76, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (13, N'S2102002', 3, 90, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (14, N'S2102003', 3, 99, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (15, N'S2102004', 3, 79, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (16, N'S2102005', 3, 80, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (17, N'S2102006', 3, 61, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (18, N'S2102007', 3, 82, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (19, N'S2102008', 3, 35, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (20, N'S2102009', 3, 64, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (21, N'S2102010', 3, 65, CAST(0xA2380000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (22, N'S1101001', 1, 80, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (23, N'S1101002', 1, 61, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (24, N'S1101003', 1, 82, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (25, N'S1101004', 1, 55, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (26, N'S1101005', 1, 64, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (27, N'S1101006', 1, 65, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (28, N'S1101007', 1, 88, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (29, N'S1101008', 1, 67, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (30, N'S1101009', 1, 68, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (31, N'S1101010', 1, 44, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (32, N'S1101011', 1, 89, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (33, N'S1101012', 1, 71, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (34, N'S1101013', 1, 44, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (35, N'S1101014', 1, 77, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (36, N'S1101015', 1, 86, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (37, N'S1101016', 1, 75, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (38, N'S1101017', 1, 76, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (39, N'S1101018', 1, 90, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (40, N'S1101019', 1, 99, CAST(0xA29C0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (41, N'S1101020', 1, 79, CAST(0xA29D0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (42, N'S1101001', 2, 80, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (43, N'S1101002', 2, 61, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (44, N'S1101003', 2, 82, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (45, N'S1101004', 2, 35, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (46, N'S1101005', 2, 64, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (47, N'S1101006', 2, 65, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (48, N'S1101007', 2, 88, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (49, N'S1101008', 2, 67, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (50, N'S1101009', 2, 68, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (51, N'S1101010', 2, 44, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (52, N'S1101011', 2, 75, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (53, N'S1101012', 2, 71, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (54, N'S1101013', 2, 44, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (55, N'S1101014', 2, 88, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (56, N'S1101015', 2, 86, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (57, N'S1101016', 2, 75, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (58, N'S1101017', 2, 38, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (59, N'S1101018', 2, 90, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (60, N'S1101019', 2, 99, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (61, N'S1101020', 2, 79, CAST(0xA2770000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (62, N'S1101011', 1, 68, CAST(0xA1EE0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (63, N'S1101014', 1, 75, CAST(0xA1EE0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (64, N'S1101008', 2, 45, CAST(0xA1EE0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (65, N'S1101014', 2, 60, CAST(0xA1EE0000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (66, N'S2102001', 8, 99, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (67, N'S2102002', 8, 55, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (68, N'S2102003', 8, 60, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (69, N'S2102004', 8, 70, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (70, N'S2102005', 8, 85, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (71, N'S2102006', 8, 88, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (72, N'S2102007', 8, 95, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (73, N'S2102008', 8, 44, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (74, N'S2102009', 8, 68, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (75, N'S2102010', 8, 88, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (76, N'S2102011', 8, 88, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (77, N'S1101001', 3, 88, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (78, N'S1101002', 3, 50, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (79, N'S1101003', 3, 44, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (80, N'S1101004', 3, 77, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (81, N'S1101005', 3, 75, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (82, N'S1101006', 3, 63, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (83, N'S1101007', 3, 15, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (84, N'S1101008', 3, 55, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (85, N'S1101009', 3, 69, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (86, N'S1101010', 3, 90, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (87, N'S1101011', 3, 95, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (88, N'S1101001', 4, 99, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (89, N'S1101002', 4, 60, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (90, N'S1101003', 4, 65, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (91, N'S1101004', 4, 77, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (92, N'S1101005', 4, 75, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (93, N'S1101006', 4, 63, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (94, N'S1101007', 4, 45, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (95, N'S1101008', 4, 55, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (96, N'S1101009', 4, 69, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (97, N'S1101010', 4, 90, CAST(0xA1890000 AS SmallDateTime))
INSERT [dbo].[Result] ([Id], [StudentNo], [SubjectId], [StudentResult], [ExamDate]) VALUES (98, N'S1101011', 4, 99, CAST(0xA1890000 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Result] OFF
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101001', N'228996245', N'���', N'��', 1, N'717215147', N'����к�����', CAST(0x0000879F00000000 AS DateTime), N'okiwcydml@ryhlo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101002', N'228996246', N'���', N'Ů', 1, N'666762663', N'������Ͽ���', CAST(0x000087F900000000 AS DateTime), N'jnqlpkdwb@nsjpt.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101003', N'228996247', N'���', N'Ů', 1, N'353149818', N'�����к������ɸ�·', CAST(0x00008C7900000000 AS DateTime), N'eepispykh@oitbl.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101004', N'228996251', N'����', N'��', 1, N'676151367', N'ѧ������', CAST(0x000088C700000000 AS DateTime), N'cxmnnrhfn@sjsam.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101005', N'228996252', N'��һͩ', N'��', 1, N'397739963', N'�����г���������', CAST(0x0000876500000000 AS DateTime), N'npgiygxox@ootml.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101006', N'228996253', N'ŷ�����', N'��', 1, N'13512345678', N'����ʡ������', CAST(0x0000843500000000 AS DateTime), N'dkwkiqbrj@yrkro.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101007', N'228996254', N'������', N'��', 1, N'13512345679', N'����ʡ�����н�����', CAST(0x00008C5000000000 AS DateTime), N'gekdinmky@ijisq.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101008', N'228996257', N'����', N'Ů', 1, N'15812345680', N'����ʡ��ɳ', CAST(0x000087B400000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101009', N'228996259', N'����', N'��', 1, N'13512345681', N'�Ϻ��г�����', CAST(0x0000867900000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101010', N'228996263', N'����', N'��', 1, N'13412345682', N'ɽ��ʡ�ĳ���', CAST(0x0000889400000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101011', N'228996267', N'Բ��', N'Ů', 1, N'13512344483', N'�ӱ�ʡʯ��ׯ', CAST(0x000086B100000000 AS DateTime), N'idfwxlbjr@bkxko.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101012', N'228996270', N'�޽���', N'Ů', 1, N'13512345684', N'�ӱ�ʡ������', CAST(0x000087D800000000 AS DateTime), N'qrakldetd@ogtso.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101013', N'228996271', N'����', N'��', 1, N'578346237', N'ѧ������', CAST(0x000087EC00000000 AS DateTime), N'soppebati@hwxpo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101014', N'228996273', N'��ѾѾ', N'��', 1, N'926457035', N'�����г�����������', CAST(0x00008B5D00000000 AS DateTime), N'rfkhgcxhy@oomkw.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101015', N'228996274', N'���', N'��', 1, N'895684949', N'������ͨ����', CAST(0x0000888300000000 AS DateTime), N'kdaqojpjj@olmcy.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101016', N'228996275', N'����', N'��', 1, N'328884827', N'������ʯ��ɽ', CAST(0x0000888400000000 AS DateTime), N'bojzfsixf@qjwgw.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101017', N'228996276', N'����', N'Ů', 1, N'511686053', N'�����к������йش�', CAST(0x0000816300000000 AS DateTime), N'ltshcitdp@qdpeh.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101018', N'228996279', N'����', N'��', 1, N'155426854', N'����ʡ�ܿ�', CAST(0x0000888600000000 AS DateTime), N'rmpnhbiop@mwrom.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101019', N'228996281', N'����', N'��', 1, N'436987577', N'����ʡ�差', CAST(0x0000843F00000000 AS DateTime), N'mdokehdic@omcte.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1101020', N'228996283', N'����', N'��', 1, N'786340887', N'������Ͽ���', CAST(0x0000888800000000 AS DateTime), N'lwspyimci@kcplq.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1201302001', N'zhangsan', N'����', N'��', 1, N'01062768866', N'���·', CAST(0x0000861D00000000 AS DateTime), N'zhangsan@126.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1201302002', N'lisi89', N'����', N'��', 1, N'13812345678', N'����·', CAST(0x0000836100000000 AS DateTime), N'δ֪@')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1201302003', N'123456', N'����', N'��', 1, N'13912345678', N'ѧ������', CAST(0x000083BD00000000 AS DateTime), N'δ֪@')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1201302004', N'wanglili', N'������', N'Ů', 1, N'13112345678', N'ɽ��ʡ�������Ļ�·1��Ժ', CAST(0x0000826D00000000 AS DateTime), N'wangll@sohu.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S1201302005', N'123456', N'�ŷ�', N'��', 2, N'13212345678', N'ѧ������', CAST(0x000086F800000000 AS DateTime), N'δ֪@')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102001', N'228996284', N'������', N'Ů', 2, N'13875940258', N'���ݵ���', CAST(0x0000888900000000 AS DateTime), N'sakuralove2829@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102002', N'228996285', N'�����', N'��', 2, N'13875940259', N'ѧ������', CAST(0x000089F700000000 AS DateTime), N'peggyonhkhk@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102003', N'228996287', N'�¯��', N'��', 2, N'13875940260', N'ѧ������', CAST(0x0000888B00000000 AS DateTime), N'yyyyyyyyyyu@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102004', N'228996290', N'������', N'Ů', 2, N'13875940261', N'���ݿ���', CAST(0x0000888C00000000 AS DateTime), N'yinyin01094@yahoo.com.hk')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102005', N'228996291', N'������', N'��', 2, N'13875940262', N'���ݽ���', CAST(0x000087B400000000 AS DateTime), N'ada19262002@hotmail.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102006', N'228996292', N'�ⱦ��', N'Ů', 2, N'13875940263', N'����ܤϪ', CAST(0x0000836D00000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102007', N'228996293', N'������', N'Ů', 2, N'13875940264', N'�����ٰ�', CAST(0x000087B600000000 AS DateTime), N'bobo_lok13@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102008', N'228996302', N'�ⴺ��', N'Ů', 2, N'13875940265', N'�𻪽���', CAST(0x000087B700000000 AS DateTime), N'yintakli@yahoo.com.hk')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102009', N'228996304', N'���Ŀ�', N'��', 2, N'13974807750', N'��������', CAST(0x00008C0000000000 AS DateTime), N'natalielam01098@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102010', N'228996305', N'������', N'��', 2, N'13007426477', N'̨������', CAST(0x000087B900000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102011', N'228996307', N'����', N'��', 2, N'13873140386', N'����������', CAST(0x0000876B00000000 AS DateTime), N'lingling52030996@hotmail.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102012', N'228996308', N'���ɷ�', N'��', 2, N'13107428484', N'ѧ������', CAST(0x0000876C00000000 AS DateTime), N'yuenfunki@yahoo.com.hk')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102013', N'228996309', N'������', N'��', 2, N'13574220088', N'���ݽ���', CAST(0x00008BB500000000 AS DateTime), N'kykwok9@hotmail.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102014', N'228996312', N'¬�ﻪ', N'Ů', 2, N'13574220089', N'���ݿ���', CAST(0x0000876E00000000 AS DateTime), N'sulia123@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102015', N'228996316', N'����', N'Ů', 2, N'13574220090', N'̨����̨', CAST(0x0000876F00000000 AS DateTime), N'chankwaiching@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102016', N'228996317', N'ʢ��', N'��', 2, N'13574220091', N'���ո���', CAST(0x0000877000000000 AS DateTime), N'yankchan2004@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102017', N'228996318', N'��Т��', N'��', 2, N'13678945617', N'������������', CAST(0x0000877100000000 AS DateTime), N'ayako04620@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102018', N'228996323', N'������', N'��', 2, N'13678945618', N'�����ٰ�', CAST(0x00008D2700000000 AS DateTime), N'ayako04620@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102019', N'228996324', N'�¿�', N'��', 2, N'13678945619', N'�½���³ľ��', CAST(0x0000870900000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'S2102020', N'228996325', N'������', N'��', 2, N'13678945620', N'�½�����', CAST(0x0000884F00000000 AS DateTime), N'phoebe_swy@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003001', N'228996326', N'����', N'��', 3, N'13574220096', N'����Ϫ', CAST(0x000086E200000000 AS DateTime), N'faat11@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003002', N'228996327', N'�ƽ���', N'��', 3, N'13574220097', N'��������', CAST(0x0000867E00000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003003', N'228996329', N'������', N'��', 3, N'13574220098', N'���ݳ�ɽ', CAST(0x000086C700000000 AS DateTime), N'mandylau1986@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003004', N'228996334', N'���ɵ�', N'Ů', 3, N'13174220099', N'��������', CAST(0x0000870600000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003005', N'228996340', N'������ ', N'Ů', 3, N'13174220100', N'ѧ������', CAST(0x0000863500000000 AS DateTime), N'raymondchoi04@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003006', N'228996341', N'�� ��', N'��', 3, N'13174220101', N'���˼���', CAST(0x0000867300000000 AS DateTime), N'tlh10202003@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003007', N'228996342', N'������', N'Ů', 3, N'13574220102', N'����Ϫ', CAST(0x0000854700000000 AS DateTime), N'mimichoi276@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003008', N'228996343', N' �� ��', N'��', 3, N'13574220103', N'ѧ������', CAST(0x0000854800000000 AS DateTime), N'mapdhhljp@ncqfg.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003009', N'228996346', N'������', N'��', 3, N'13574220104', N'����˫��', CAST(0x0000882300000000 AS DateTime), N'godspnrel@eblox.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003010', N'228996348', N'������', N'��', 3, N'13574220105', N'���ݳ�ɽ', CAST(0x0000854A00000000 AS DateTime), N'wieiowzmq@jplop.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003011', N'228996349', N'�� ��', N'��', 3, N'13574220106', N'����������', CAST(0x0000854B00000000 AS DateTime), N'wengsanc14l@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003012', N'228996351', N'�տ���', N'��', 3, N'13374220107', N'��������', CAST(0x0000854C00000000 AS DateTime), N'wengsanc15l@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003013', N'228996352', N'��ѩ��', N'Ů', 3, N'13374220108', N'��������', CAST(0x0000871700000000 AS DateTime), N'wengsanc16l@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003014', N'228996353', N'������', N'Ů', 3, N'13374220109', N'ѧ������', CAST(0x0000877000000000 AS DateTime), N'wengsanc17l@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003015', N'228996357', N'������', N'Ů', 3, N'13374220110', N'������Ҳ�', CAST(0x0000879D00000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003016', N'228996362', N'���', N'��', 3, N'13574220111', N'̨������', CAST(0x000086D800000000 AS DateTime), N'wengsanc19l@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003017', N'228996364', N'֣��', N'��', 3, N'13574220112', N'����������', CAST(0x0000877100000000 AS DateTime), N'wengsanc20l@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003018', N'228996365', N'�ι�Ӣ', N'��', 3, N'13574220113', N'̨������', CAST(0x0000853500000000 AS DateTime), NULL)
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003019', N'228996370', N'����', N'��', 3, N'13574220114', N'̨������', CAST(0x000087B300000000 AS DateTime), N'wengsanc22l@yahoo.com')
INSERT [dbo].[Student] ([StudentNo], [LoginPwd], [StudentName], [Sex], [GradeId], [Phone], [Address], [BornDate], [Email]) VALUES (N'Y21003020', N'228996371', N'��Ӧ��', N'��', 3, N'13574220115', N'����������', CAST(0x0000867600000000 AS DateTime), N'wengsanc23l@yahoo.com')
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (1, N'�߽�Java�������', 55, 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (2, N'HTML��CSS��ҳ����', 60, 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (3, N'C#���Ժ����ݿ⼼��', 70, 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (4, N'ʹ��C#���Կ������ݿ�Ӧ��ϵͳ', 36, 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (5, N'����.NETƽ̨��C#���', 76, 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (6, N'���MySchool���ݿ�', 42, 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (7, N'����.NETƽ̨�����ϵͳ�ֲ㿪��', 44, 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (8, N'�������������', 59, 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (9, N'ʹ��JavaScript��ǿ����Ч��', 40, 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (10, N'ʹ��Java EE�����������ŷ���ϵͳ', 55, 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (11, N'ʹ��ASP.NET���������������', 86, 3)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (12, N'��������Ajax�Ϳؼ�������WebӦ��ϵ', 60, 3)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (13, N'ʹ��Java��ܼ�������������Ϣ����ϵͳ', 52, 3)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [ClassHour], [GradeId]) VALUES (14, N'ʹ��Java��ҵ������������ҵӦ��', 68, 3)
SET IDENTITY_INSERT [dbo].[Subject] OFF
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_LoginPwd]  DEFAULT ((123456)) FOR [LoginPwd]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Address]  DEFAULT (N'ѧ������') FOR [Address]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Student] FOREIGN KEY([StudentNo])
REFERENCES [dbo].[Student] ([StudentNo])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Student]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Subject]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Grade]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Grade]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [CK_Result] CHECK  (([StudentResult]>(0) AND [StudentResult]<(100)))
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [CK_Result]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student_Email] CHECK  (([Email] like '%@%'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student_Email]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student_LoginPwd] CHECK  ((len([LoginPwd])>=(6)))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student_LoginPwd]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student_Sex] CHECK  (([Sex]='��' OR [Sex]='Ů'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student_Sex]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [CK_Subject] CHECK  (([ClassHour]>(0)))
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [CK_Subject]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN',@level2name=N'GradeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN',@level2name=N'GradeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʶ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Result', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Result', @level2type=N'COLUMN',@level2name=N'StudentNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Result', @level2type=N'COLUMN',@level2name=N'SubjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Result', @level2type=N'COLUMN',@level2name=N'StudentResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Result', @level2type=N'COLUMN',@level2name=N'ExamDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'StudentNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'LoginPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'StudentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'GradeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'BornDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'SubjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'SubjectName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'ClassHour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'GradeId'
GO
USE [master]
GO
ALTER DATABASE [MySchool] SET  READ_WRITE 
GO
