
--create database MovieDB
USE MovieDB
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[MaComment] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NULL,
	[MaTaiKhoan] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGianCMT] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[MaComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGiaChung]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaChung](
	[MaTaiKhoan] [int] NOT NULL,
	[MaPhim] [int] NOT NULL,
	[DanhGia] [int] NULL,
 CONSTRAINT [PK_DanhGiaChung] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC,
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoDien]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoDien](
	[MaDaoDien] [int] IDENTITY(1,1) NOT NULL,
	[TenDaoDien] [nvarchar](50) NULL,
	[ThongTin] [nvarchar](50) NULL,
 CONSTRAINT [PK_DaoDien] PRIMARY KEY CLUSTERED 
(
	[MaDaoDien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Episode]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Episode](
	[MaTapPhim] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NULL,
	[SoTapPhim] [int] NULL,
	[Duonglink] [nvarchar](500) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_Episode] PRIMARY KEY CLUSTERED 
(
	[MaTapPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhThuc]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThuc](
	[MaHinhThuc] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_HinhThuc] PRIMARY KEY CLUSTERED 
(
	[MaHinhThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[Anh] [nvarchar](max) NULL,
	[PhanQuyen] [int] NULL,
	[isDeleted] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiLuongDaXem]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiLuongDaXem](
	[MaTaiKhoan] [int] NOT NULL,
	[MaTapPhim] [int] NOT NULL,
	[ThoiGianDaXem] [int] NULL,
 CONSTRAINT [PK_ThoiLuongDaXem] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC,
	[MaTapPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tPhim]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPhim](
	[MaPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](100) NULL,
	[MaTheLoai] [int] NULL,
	[MaDaoDien] [int] NULL,
	[PhuDe] [int] NULL,
	[Anh] [nvarchar](300) NULL,
	[NgayKhoiChieu] [datetime] NULL,
	[MaTrangThai] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[MaHinhThuc] [int] NULL,
	[GioiHanDoTuoi] [int] NULL,
	[MaTrailer] [int] NULL,
 CONSTRAINT [PK_tPhim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trailer]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trailer](
	[MaTrailer] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](500) NULL,
 CONSTRAINT [PK_Trailer] PRIMARY KEY CLUSTERED 
(
	[MaTrailer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 2/19/2023 12:27:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[MaTrangThai] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_TaiKhoan]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_tPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tPhim] ([MaPhim])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_tPhim]
GO
ALTER TABLE [dbo].[DanhGiaChung]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaChung_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DanhGiaChung] CHECK CONSTRAINT [FK_DanhGiaChung_TaiKhoan]
GO
ALTER TABLE [dbo].[DanhGiaChung]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaChung_tPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tPhim] ([MaPhim])
GO
ALTER TABLE [dbo].[DanhGiaChung] CHECK CONSTRAINT [FK_DanhGiaChung_tPhim]
GO
ALTER TABLE [dbo].[Episode]  WITH CHECK ADD  CONSTRAINT [FK_Episode_tPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tPhim] ([MaPhim])
GO
ALTER TABLE [dbo].[Episode] CHECK CONSTRAINT [FK_Episode_tPhim]
GO
ALTER TABLE [dbo].[ThoiLuongDaXem]  WITH CHECK ADD  CONSTRAINT [FK_ThoiLuongDaXem_Episode] FOREIGN KEY([MaTapPhim])
REFERENCES [dbo].[Episode] ([MaTapPhim])
GO
ALTER TABLE [dbo].[ThoiLuongDaXem] CHECK CONSTRAINT [FK_ThoiLuongDaXem_Episode]
GO
ALTER TABLE [dbo].[ThoiLuongDaXem]  WITH CHECK ADD  CONSTRAINT [FK_ThoiLuongDaXem_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[ThoiLuongDaXem] CHECK CONSTRAINT [FK_ThoiLuongDaXem_TaiKhoan]
GO
ALTER TABLE [dbo].[tPhim]  WITH CHECK ADD  CONSTRAINT [FK_tPhim_DaoDien] FOREIGN KEY([MaDaoDien])
REFERENCES [dbo].[DaoDien] ([MaDaoDien])
GO
ALTER TABLE [dbo].[tPhim] CHECK CONSTRAINT [FK_tPhim_DaoDien]
GO
ALTER TABLE [dbo].[tPhim]  WITH CHECK ADD  CONSTRAINT [FK_tPhim_HinhThuc] FOREIGN KEY([MaHinhThuc])
REFERENCES [dbo].[HinhThuc] ([MaHinhThuc])
GO
ALTER TABLE [dbo].[tPhim] CHECK CONSTRAINT [FK_tPhim_HinhThuc]
GO
ALTER TABLE [dbo].[tPhim]  WITH CHECK ADD  CONSTRAINT [FK_tPhim_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[tPhim] CHECK CONSTRAINT [FK_tPhim_TheLoai]
GO
ALTER TABLE [dbo].[tPhim]  WITH CHECK ADD  CONSTRAINT [FK_tPhim_Trailer] FOREIGN KEY([MaTrailer])
REFERENCES [dbo].[Trailer] ([MaTrailer])
GO
ALTER TABLE [dbo].[tPhim] CHECK CONSTRAINT [FK_tPhim_Trailer]
GO
ALTER TABLE [dbo].[tPhim]  WITH CHECK ADD  CONSTRAINT [FK_tPhim_TrangThai] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[TrangThai] ([MaTrangThai])
GO
ALTER TABLE [dbo].[tPhim] CHECK CONSTRAINT [FK_tPhim_TrangThai]
GO
CREATE TYPE udtCommentType AS TABLE
(
    [MaPhim] [int] NULL,
	[TenTaiKhoan] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGianCMT] [datetime] NULL
)

create or alter proc insertComment  
@udtCommentType dbo.udtCommentType READONLY
as
BEGIN

    -- Do something with the UDTT parameters
    insert into Comment 
	select * from @udtCommentType
	
END


insert into TheLoai values(N'Hành động')
insert into TheLoai values(N'Kinh dị')
insert into TheLoai values(N'Khoa học viễn tưởng')
insert into TheLoai values(N'Trinh thám')
insert into TheLoai values(N'Drama')
insert into TheLoai values(N'Hài')
insert into TheLoai values(N'Chiến tranh')
insert into TheLoai values(N'Tình cảm')
insert into TheLoai values(N'Ca nhạc')
insert into TheLoai values(N'Hoạt hình')
insert into TheLoai values(N'Lịch sử')

insert into HinhThuc values(N'Phim bộ')
insert into HinhThuc values(N'Phim lẻ')

insert into DaoDien values('Steven Spielberg', NULL)
insert into DaoDien values('Martin Scorsese', NULL)
insert into DaoDien values('Alfred Hitchcock', NULL)
insert into DaoDien values('Stanley Kubrick', NULL)
insert into DaoDien values('Francis Ford Coppola', NULL)
insert into DaoDien values('Woody Allen', NULL)
insert into DaoDien values('Billy Wilder', NULL)
insert into DaoDien values('John Huston', NULL)
insert into DaoDien values('Peter Jackson', NULL)
insert into DaoDien values('Milos Forman', NULL)
insert into DaoDien values('David Lean', NULL)
insert into DaoDien values('Ingmar Bergman', NULL)
insert into DaoDien values('Joel Coen', NULL)
insert into DaoDien values('John Ford', NULL)

insert into Trailer values('https://www.youtube.com/embed/0hLoZ20qTM8')
insert into Trailer values('https://www.youtube.com/embed/m838XNyLx48')
insert into Trailer values('https://www.youtube.com/embed/gq2xKJXYZ80')
insert into Trailer values('https://www.youtube.com/embed/FyNxRxgWL7A')
insert into Trailer values('https://www.youtube.com/embed/u9Mv98Gr5pY')
insert into Trailer values('https://www.youtube.com/embed/j3r7kq0UZMw')
insert into Trailer values('https://www.youtube.com/embed/xi-1NchUqMA')
insert into Trailer values('https://www.youtube.com/embed/jluSu8Rw6YE')
insert into Trailer values('https://www.youtube.com/embed/Y5zqweZAEKI')
insert into Trailer values('https://www.youtube.com/embed/fWm0uu_zun8')
insert into Trailer values('https://www.youtube.com/embed/JWtnJjn6ng0')
insert into Trailer values('https://www.youtube.com/embed/4KSN7mxhiYE')
insert into Trailer values('https://www.youtube.com/embed/sefQqCMusJI')
insert into Trailer values('https://www.youtube.com/embed/S94ukM8C17A')
insert into Trailer values('https://www.youtube.com/embed/KPLWWIOCOOQ')
insert into Trailer values('https://www.youtube.com/embed/TfRcS_5Dhks')
insert into Trailer values('https://www.youtube.com/embed/P6coIgyV9e0')
insert into Trailer values('https://www.youtube.com/embed/R5S5tsbjWOA')
insert into Trailer values('https://www.youtube.com/embed/iKpKAlbJ7BQ')
insert into Trailer values('https://www.youtube.com/embed/3eqxXqJDmcY')
insert into Trailer values('https://www.youtube.com/embed/mfmrPu43DF8')

insert into TrangThai values (N'Hoàn thành')
insert into TrangThai values (N'Chưa hoàn thành')
insert into TrangThai values (N'Sắp chiếu')

insert into tPhim values(N'Vùng đất câm lặng', 2, 1, 1, '1.jpg',CAST(N'2023-04-06T00:00:00.000' AS DateTime), 1,N'Vùng đất câm lặng là một bộ phim kinh dị khoa học viễn tưởng đề tài hậu tận thế công chiếu năm 2018 của Mỹ, do John Krasinski đạo diễn kiêm đóng chính và đồng biên kịch với Bryan Woods và Scott Beck.'
,N'Âu Mỹ', 2, 13, 1)    
insert into tPhim values(N'Muốn gặp anh', 8, 2, 1, '2.jpg',CAST(N'2023-02-10T00:00:00.000' AS DateTime), 1, N'Chuyện tình của Lý Tử Duy (Hứa Quang Hán) và Hoàng Vũ Huyên(Kha Giai Yến) trải qua nhiều bi thương trong "Muốn gặp anh".'
,N'Trung Quốc', 2, 13, 2)    
insert into tPhim values(N'Avatar 2', 3, 3, 1, '3.jpg', CAST(N'2023-04-06T00:00:00.000' AS DateTime)
, 1, N'Avatar: Dòng chảy của nước là một bộ phim khoa học viễn tưởng sử thi của Mỹ năm 2022 do James Cameron đạo diễn, người đồng viết kịch bản với Rick Jaffa và Amanda Silver từ một câu chuyện mà bộ ba viết cùng Josh Friedman và Shane Salerno.'
,N'Âu Mỹ', 2, 13, 3)    
insert into tPhim values(N'Little Mermaid', 9, 4, 1, '4.jpg', CAST(N'2023-05-26T00:00:00.000' AS DateTime)
, 1, N'Nàng tiên cá là một bộ phim ca nhạc giả tưởng sắp ra mắt của Mỹ do Rob Marshall đạo diễn từ một kịch bản được viết bởi David Magee và Jane Goldman, và một câu chuyện của Magee, Marshall và John DeLuca.'
,N'Âu Mỹ', 2, 13, 4)    
insert into tPhim values('Venom', 1, 5, 1, '5.jpg', CAST(N'2018-10-05T00:00:00.000' AS DateTime), 1, N'Venom là một phim siêu anh hùng của Mỹ dựa trên nhân vật cùng tên của Marvel Comics, do Columbia Pictures sản xuất và Sony Pictures Releasing phát hành. Nó được dự định là bộ phim đầu tiên trong Thế giới Marvel của Sony, được hỗ trợ nhưng tách biệt khỏi Vũ trụ Điện ảnh Marvel.'
,N'Âu Mỹ', 2, 13, 5)    
insert into tPhim values(N'Chị chị em em 2', 5, 6, 0, '6.jpg',CAST(N'2023-01-22T00:00:00.000' AS DateTime), 2, 'Lấy cảm hứng từ hai giai nhân, Chị Chị Em Em 2 phá cách nhiều hơn chứ không hướng tới một bộ phim chiếu rạp chân thật đúng lịch sử. Đầu phim, Ba Trà đang là đệ nhất mỹ nhân Sài Thành, tiền bạc xài phủ phê, bao nhiêu công tử giàu sang vây quanh. Cùng lúc, Tư Nhị là cô gái điếm “biết khi nào mới được làm người”. Thông minh, khéo léo, táo bạo và to gan; Tư Nhị lên kế hoạch giăng bẫy đưa Ba Trà vào tròng. Tư Nhị muốn Ba Trà thấy rằng ngôi vị đệ nhất mỹ nhân mà bao lâu nay Ba Trà tự hào, kẻ như cô cũng có thể vươn tới.'
,N'Việt Nam', 2, 18, 6)    
insert into tPhim values('Knives Out', 4, 7, 1, '7.jpg',CAST(N'2019-09-07T00:00:00.000' AS DateTime), 2,N'Kẻ đâm lén là một bộ phim bí ẩn Mỹ năm 2019, đạo diễn kiêm biên kịch bởi Rian Johnson và do ông cùng Ram Bergman sản xuất.'
,N'Âu Mỹ', 2, 13, 7)    
insert into tPhim values(N'Bố già', 6, 8, 1, '8.jpg', CAST(N'2021-03-12T00:00:00.000' AS DateTime), 2, N'Bố già là một bộ phim điện ảnh hài chính kịch của Việt Nam năm 2021 do Trấn Thành và Vũ Ngọc Đãng đồng đạo diễn. Bộ phim do Thảo Nguyễn đảm nhiệm vai trò sản xuất, dựa trên phần kịch bản do Trấn Thành, Kalei An Nhi và Aquay chấp bút.'
,N'Việt Nam', 2, 13, 8)    
insert into tPhim values('Puss in boots', 10, 1, 1, '9.jpg',CAST(N'2022-12-30T00:00:00.000' AS DateTime), 3, N'Mèo đi hia: Điều ước cuối cùng là bộ phim hoạt hình hài phiêu lưu được sản xuất bởi DreamWorks Animation. Phim là ngoại truyện của loạt phim Shrek và là hậu truyện của Mèo đi hia.'
,N'Âu Mỹ', 2, 13, 9)    
insert into tPhim values('1945', 11, 2, 1, '10.jpg', CAST(N'2017-01-19T00:00:00.000' AS DateTime), 1, N'1945 là một bộ phim chính kịch năm 2017 của Hungary do Ferenc Török đạo diễn, Török và Gábor T. Szántó đồng viết kịch bản.'
,N'Âu Mỹ', 2, 13, 10) 

insert into tPhim values('The crown', 11, 1, 1, '11.jpg', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 1, N'The Crown là một bộ phim truyền hình chính kịch lịch sử về triều đại của Nữ hoàng Elizabeth II, được tạo ra và viết kịch bản chính bởi Peter Morgan và được sản xuất bởi Left Bank Pictures và Sony Pictures tivi cho Netflix.'
,N'Âu Mỹ', 1, 13, 11)
insert into tPhim values('Fairy tail', 10, 2, 1, '12.jpg', CAST(N'2009-10-12T00:00:00.000' AS DateTime), 2, N'Fairy Tail (Hội Pháp Sư) là một series truyện tranh Nhật Bản được sáng tác bởi tác giả Hiro Mashima. '
,N'Nhật Bản', 1, 13, 12)
insert into tPhim values('Glee', 9, 3, 1, '13.jpg', CAST(N'2015-03-20T00:00:00.000' AS DateTime), 1, N'Glee là một bộ phim truyền hình dài tập thuộc thể loại nhạc kịch và hài-chính kịch của Mỹ được trình chiếu trên kênh Fox. Bộ phim xoay quanh đội văn nghệ trung học New Directions luôn luyện tập và tìm những ý tưởng mới để có thể đại diện trường học của mình tham gia những cuộc thi âm nhạc khác nhau.'
,N'Âu Mỹ', 1, 16, 13)
insert into tPhim values('Goblin', 8, 4, 1, '14.jpg', CAST(N'2016-12-02T00:00:00.000' AS DateTime), 1, N'Yêu Tinh là một bộ phim truyền hình Hàn Quốc với sự tham gia của Gong Yoo, Lee Dong-wook, Kim Go-eun, Yoo In-na và Yook Sung-jae. '
,N'Âu Mỹ', 1, 16, 14)
insert into tPhim values('Game of Thrones', 7, 5, 1, '15.jpg',CAST(N'2011-04-17T00:00:00.000' AS DateTime), 1, N'Trò chơi vương quyền là một loạt phim truyền hình giả tưởng của Mỹ được sáng lập bởi David Benioff và D. B. Weiss. Bộ phim chuyển thể dựa trên loạt tiểu thuyết giả tưởng A Song of Ice and Fire của tác giả George R. R. Martin, tập đầu tiên của tiểu thuyết có tên A Game of Thrones.'
,N'Âu Mỹ', 1, 19, 15)
insert into tPhim values('Oh Hae Young again', 6, 6, 1, '16.jpg',CAST(N'2016-06-28T00:00:00.000' AS DateTime), 2, N'Lại là Oh Hae Young là một bộ phim truyền hình Hàn Quốc với diễn viên chính Eric Mun, Seo Hyun-jin, Jeon Hye-bin.'
,N'Hàn Quốc', 1, 13, 16)
insert into tPhim values('Sky Castle', 5, 7, 1, '17.jpg', CAST(N'2018-11-23T00:00:00.000' AS DateTime), 1, N'Lâu đài tham vọng là một bộ phim truyền hình Hàn Quốc năm 2018 với sự tham gia của Yum Jung-ah, Lee Tae-ran, Yoon Se-ah, Oh Na-ra và Kim Seo-hyung.'
,N'Hàn Quốc', 1, 13, 17)
insert into tPhim values('Secret Forest', 4, 1, 1, '18.jpg', CAST(N'2017-06-10T00:00:00.000' AS DateTime), 1, N'Khu rừng bí mật là một bộ phim truyền hình Hàn Quốc với sự tham gia của Jo Seung-woo và Bae Doo-na.'
,N'Hàn Quốc', 1, 13, 18)
insert into tPhim values('Sense8', 3, 2, 1, '19.jpg',CAST(N'2015-06-05T00:00:00.000' AS DateTime), 1, N'Sense8 là một bộ phim truyền hình mạng thể loại khoa học viễn tưởng drama của Hoa Kỳ, được sáng tạo bởi Lana và Lilly Wachowski cùng với J. Michael Straczynski cho trang Netflix.'
,N'Âu Mỹ', 1, 13, 19)
insert into tPhim values('The haunting of Hill house', 2, 3, 1, '20.jpg',CAST(N'2018-12-10T00:00:00.000' AS DateTime), 1, N'The Haunting of Hill House là một bộ phim truyền hình Mỹ theo thể loại kinh dị siêu nhiên được sản xuất và đạo diễn bởi Mike Flanagan, chịu trách nhiệm sản xuất bởi Amblin Television và Paramount Television, được phát hành trên nền tảng xem phim trực tuyến Netflix.'
,N'Âu Mỹ', 1, 13, 20)
insert into tPhim values('The hunger games', 1, 4, 1, '21.jpg', CAST(N'2012-03-30T00:00:00.000' AS DateTime), 1, N'Đấu trường sinh tử là một bộ phim của đạo diễn Gary Ross, chuyển thể dựa trên cuốn tiểu thuyết cùng tên của tác giả Suzanne Collins với sự tham gia của các ngôi sao điện ảnh như Jennifer Lawrence, Josh Hutcherson và Liam Hemsworth.'
,N'Âu Mỹ', 1, 13, 21)


INSERT into [dbo].[Episode] VALUES ( 2, 1, N'https://www.youtube.com/embed/kxZN82xEupU', 17)
INSERT into [dbo].[Episode]  VALUES ( 2, 2, N'https://www.youtube.com/embed/6a100tLSuew', 10)
INSERT into [dbo].[Episode]  VALUES ( 2, 3, N'https://www.youtube.com/embed/LpyEs9jdxZQ', 5)


insert into Comment values (1, 1, N'The script was weak and lacked any real substance, leaving me feeling bored and uninterested.', CAST(N'2022-10-20T00:00:00.000' AS DateTime))
insert into Comment values (2, 2, N'The acting was subpar, with some actors delivering their lines with little emotion or conviction.', CAST(N'2022-10-21T00:00:00.000' AS DateTime))
insert into Comment values (2, 3, N'This movie was an absolute delight from start to finish. The storyline was engaging, the characters were lovable, and the cinematography was breathtaking. I would highly recommend this film to anyone who loves a good, heartwarming story.', CAST(N'2022-10-22T00:00:00.000' AS DateTime))
insert into Comment values (2, 4, N'The special effects were underwhelming and did not add much to the overall visual experience of the movie.', CAST(N'2022-10-23T00:00:00.000' AS DateTime))
insert into Comment values (2, 5, N'The music was forgettable and did not add any emotional depth or impact to the story.',CAST(N'2021-10-20T00:00:00.000' AS DateTime))
insert into Comment values (6, 1, N'The pacing of the movie was slow and dragged on, making it feel much longer than it needed to be.',CAST(N'2021-09-12T00:00:00.000' AS DateTime))
insert into Comment values (7, 2, N'The acting in this movie was absolutely phenomenal. Each actor brought their A-game, and it showed in every scene. The chemistry between the characters was also fantastic, making for some truly memorable moments', CAST(N'2022-10-14T00:00:00.000' AS DateTime))
insert into Comment values (8, 3, N'The special effects in this movie were nothing short of stunning. From the intricate details of the costumes to the breathtaking landscapes, every aspect of the visual experience was top-notch. This is definitely a movie that deserves to be seen on the big screen.', CAST(N'2021-10-14T00:00:00.000' AS DateTime))
insert into Comment values (9, 4, N'The music in this movie was truly outstanding. The score was beautiful and helped to create an immersive and emotional experience for the viewer. I found myself humming the soundtrack for days after watching the film', CAST(N'2021-10-15T00:00:00.000' AS DateTime))
insert into Comment values (10, 5, N'This movie was a true masterpiece. The writing was clever and insightful, the acting was superb, and the direction was impeccable. I was thoroughly engrossed in the story and was left feeling deeply moved by the end. I cannot recommend this film enough', CAST(N'2022-10-16T00:00:00.000' AS DateTime))
insert into Comment values (11, 1, N'The plot was convoluted and hard to follow, making it difficult to care about the characters or their motivations', CAST(N'2021-10-17T00:00:00.000' AS DateTime))
insert into Comment values (12, 2, N'Tuyệt vời', CAST(N'2022-10-18T00:00:00.000' AS DateTime))
insert into Comment values (13, 3, N'Xuất sắc',CAST(N'2022-10-01T00:00:00.000' AS DateTime))
insert into Comment values (14, 4, N'Hay lắm', CAST(N'2022-10-02T00:00:00.000' AS DateTime))
insert into Comment values (15, 5, N'Hay quá', CAST(N'2022-10-03T00:00:00.000' AS DateTime))
insert into Comment values (16, 1, N'Hay', CAST(N'2022-10-04T00:00:00.000' AS DateTime))
insert into Comment values (17, 2, N'Được', CAST(N'2022-09-05T00:00:00.000' AS DateTime))
insert into Comment values (18, 3, N'Tạm ổn', CAST(N'2022-10-06T00:00:00.000' AS DateTime))
insert into Comment values (19, 4, N'Cũng được', CAST(N'2021-10-07T00:00:00.000' AS DateTime))
insert into Comment values (20, 5, N'Tệ', CAST(N'2022-10-08T00:00:00.000' AS DateTime))
insert into Comment values (21, 1, N'Tệ', CAST(N'2022-10-09T00:00:00.000' AS DateTime))




Insert into ThoiLuongDaXem values (1,1,12)
Insert into ThoiLuongDaXem values (2,4,20)
Insert into ThoiLuongDaXem values (3,2,35)


--- Thien 
create or ALTER PROCEDURE [dbo].[Proc_GetMovies]
	
AS
BEGIN
	SET NOCOUNT ON;

    Select * from tPhim 
END
--phim mới
create or ALTER PROCEDURE [dbo].[Proc_NewMovie] 
AS
BEGIN
	SET NOCOUNT ON;

    select top 6 * from tPhim order by NgayKhoiChieu desc
END
--tìm kiếm
create or ALTER PROCEDURE [dbo].[Proc_Search] 
	@data nvarchar(400)
AS
BEGIN
	SET NOCOUNT ON;
	declare @dataSearch nvarchar(400)
	set @dataSearch='"*'+@data+'*"'
	select * from tPhim where  CONTAINS(TenPhim,@dataSearch) 
END
--top view
create or ALTER PROCEDURE [dbo].[Proc_Top5MovieByView] 
AS
BEGIN
	SET NOCOUNT ON;

    select top 5 tPhim.* from tPhim join Episode on tPhim.MaPhim = Episode.MaPhim 
	order by LuotXem desc
END
