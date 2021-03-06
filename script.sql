USE [QL_BanHang]
GO
/****** Object:  Table [dbo].[tb_CTHD]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTHD](
	[MaHD] [varchar](10) NOT NULL,
	[MaHH] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_tb_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HangHoa]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HangHoa](
	[MaHang] [varchar](10) NOT NULL,
	[TenHang] [nvarchar](30) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[Anh] [nvarchar](200) NULL,
 CONSTRAINT [PK_tb_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HoaDon]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[NguoiLap] [varchar](10) NULL,
	[KhachHang] [varchar](10) NULL,
 CONSTRAINT [PK_tb_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_KhachHang]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NamSinh] [date] NULL,
	[SDT] [varchar](11) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Diem] [int] NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_tb_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NamSinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](11) NULL,
	[MatKhau] [varchar](20) NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH001', N'OPPO A15', 3190000, 9999, N'D:\QL_BanHang\Picture\oppo-a15-black-600x600-2-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH002', N'iphone 12 64GB', 21990000, 9999, N'D:\QL_BanHang\Picture\iphone-12-xanh-duong-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH003', N'Xiaomi Redmi Note 10 (6/128)', 5190000, 9999, N'D:\QL_BanHang\Picture\xiaomi-redmi-note-10-thumb-green-600x600-1-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH004', N'SamSung Galaxy A72', 11490000, 9999, N'D:\QL_BanHang\Picture\samsung-galaxy-a72-thumb-balck-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH005', N'Vsmart Star 5 (3/64)', 2890000, 8888, N'D:\QL_BanHang\Picture\vsmart-star-5-thumb-green-600x600-3-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH006', N'Vivo Y51 (2020)', 5990000, 4444, N'D:\QL_BanHang\Picture\vivo-y51-bac-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH007', N'Samsung Galazy Z Fold 2 5G', 50000000, 5555, N'D:\QL_BanHang\Picture\samsung-galaxy-z-fold-2-vang-dong-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH008', N'iphone 12 Pro Max 512GB', 41490000, 555, N'D:\QL_BanHang\Picture\iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH009', N'iphone 12 Pro 512GB', 36990000, 4444, N'D:\QL_BanHang\Picture\iphone-12-pro-xanh-duong-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH010', N'iphone 12 Pro Max 256GB', 34490000, 5555, N'D:\QL_BanHang\Picture\iphone-12-pro-max-vang-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH011', N'iphone 12 Pro Max 128GB', 31690000, 3333, N'D:\QL_BanHang\Picture\iphone-12-pro-max-xanh-duong-new-600x600-600x600 (1).jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH012', N'Samsung Galaxy S21 Ultra 5G', 33990000, 5555, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-ultra-256gb-den-600x600-1-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH013', N'iphone 12 pro 256GB', 31990000, 3333, N'D:\QL_BanHang\Picture\iphone-12-pro-xam-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH014', N'Samsung Galaxy Note 20 Ultra', 29990000, 54555, N'D:\QL_BanHang\Picture\samsunggalaxynote20ultratrangnew-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH015', N'Samsung Galaxy Note 20 Ultra', 29990000, 33232, N'D:\QL_BanHang\Picture\sam-sung-note-20-ultra-vang-dong-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH016', N'iphone 12 Proo 128GB', 28990000, 231243, N'D:\QL_BanHang\Picture\iphone-12-pro-bac-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH017', N'Samsung S21 Ultra 5G 128GB', 30990000, 13123, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-ultra-den-600x600-400x400.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH018', N'Samsung Note 20 Ultra', 26990000, 231231, N'D:\QL_BanHang\Picture\samsung-galaxy-note-20-ultra-vangdong-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH019', N'Samsung S21+ 5G 256GB', 28990000, 342342, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-plus-256gb-bac-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH020', N'Iphone 12 256GB', 25990000, 3131, N'D:\QL_BanHang\Picture\iphone-12-trang-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH021', N'Samsung s21+ 5G 128GB', 25990000, 12312, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-plus-den-600x600-600x600.jpg')
GO
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [GioiTinh], [NamSinh], [SDT], [DiaChi], [Diem], [Email]) VALUES (N'KH001', N'Võ Thị Thuỳ Trang', N'Nữ', CAST(N'2001-09-15' AS Date), N'0912345678', N'351 Lạc Long Quân', 0, N'trang@gmail.com')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [GioiTinh], [NamSinh], [SDT], [DiaChi], [Diem], [Email]) VALUES (N'KH002', N'Phạm Như Ý', N'Nữ', CAST(N'2021-11-04' AS Date), N'0987123456', N'351 Lạc Long Quân', 0, N'nhuy@gmail.com')
GO
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV001', N'Trần Ngọc Nghĩa', N'Nam', CAST(N'2001-12-01' AS Date), N'351 Lạc Long Quân', N'0941414503', N'')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV002', N'Hồ Thanh Hải', N'Nam', CAST(N'2001-01-04' AS Date), N'Quận 4', N'1234567890', N'')
GO
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[tb_HangHoa] ([MaHang])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_HangHoa]
GO
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tb_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_HoaDon]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_KhachHang] FOREIGN KEY([KhachHang])
REFERENCES [dbo].[tb_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_KhachHang]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_NhanVien] FOREIGN KEY([NguoiLap])
REFERENCES [dbo].[tb_NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_NhanVien]
GO
USE [QL_BanHang]
GO
/****** Object:  Table [dbo].[tb_CTHD]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTHD](
	[MaHD] [varchar](10) NOT NULL,
	[MaHH] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_tb_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HangHoa]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HangHoa](
	[MaHang] [varchar](10) NOT NULL,
	[TenHang] [nvarchar](30) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[Anh] [nvarchar](200) NULL,
 CONSTRAINT [PK_tb_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HoaDon]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[NguoiLap] [varchar](10) NULL,
	[KhachHang] [varchar](10) NULL,
 CONSTRAINT [PK_tb_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_KhachHang]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NamSinh] [date] NULL,
	[SDT] [varchar](11) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Diem] [int] NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_tb_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 4/12/2021 12:01:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NamSinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](11) NULL,
	[MatKhau] [varchar](20) NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH001', N'OPPO A15', 3190000, 9999, N'D:\QL_BanHang\Picture\oppo-a15-black-600x600-2-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH002', N'iphone 12 64GB', 21990000, 9999, N'D:\QL_BanHang\Picture\iphone-12-xanh-duong-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH003', N'Xiaomi Redmi Note 10 (6/128)', 5190000, 9999, N'D:\QL_BanHang\Picture\xiaomi-redmi-note-10-thumb-green-600x600-1-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH004', N'SamSung Galaxy A72', 11490000, 9999, N'D:\QL_BanHang\Picture\samsung-galaxy-a72-thumb-balck-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH005', N'Vsmart Star 5 (3/64)', 2890000, 8888, N'D:\QL_BanHang\Picture\vsmart-star-5-thumb-green-600x600-3-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH006', N'Vivo Y51 (2020)', 5990000, 4444, N'D:\QL_BanHang\Picture\vivo-y51-bac-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH007', N'Samsung Galazy Z Fold 2 5G', 50000000, 5555, N'D:\QL_BanHang\Picture\samsung-galaxy-z-fold-2-vang-dong-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH008', N'iphone 12 Pro Max 512GB', 41490000, 555, N'D:\QL_BanHang\Picture\iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH009', N'iphone 12 Pro 512GB', 36990000, 4444, N'D:\QL_BanHang\Picture\iphone-12-pro-xanh-duong-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH010', N'iphone 12 Pro Max 256GB', 34490000, 5555, N'D:\QL_BanHang\Picture\iphone-12-pro-max-vang-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH011', N'iphone 12 Pro Max 128GB', 31690000, 3333, N'D:\QL_BanHang\Picture\iphone-12-pro-max-xanh-duong-new-600x600-600x600 (1).jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH012', N'Samsung Galaxy S21 Ultra 5G', 33990000, 5555, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-ultra-256gb-den-600x600-1-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH013', N'iphone 12 pro 256GB', 31990000, 3333, N'D:\QL_BanHang\Picture\iphone-12-pro-xam-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH014', N'Samsung Galaxy Note 20 Ultra', 29990000, 54555, N'D:\QL_BanHang\Picture\samsunggalaxynote20ultratrangnew-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH015', N'Samsung Galaxy Note 20 Ultra', 29990000, 33232, N'D:\QL_BanHang\Picture\sam-sung-note-20-ultra-vang-dong-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH016', N'iphone 12 Proo 128GB', 28990000, 231243, N'D:\QL_BanHang\Picture\iphone-12-pro-bac-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH017', N'Samsung S21 Ultra 5G 128GB', 30990000, 13123, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-ultra-den-600x600-400x400.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH018', N'Samsung Note 20 Ultra', 26990000, 231231, N'D:\QL_BanHang\Picture\samsung-galaxy-note-20-ultra-vangdong-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH019', N'Samsung S21+ 5G 256GB', 28990000, 342342, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-plus-256gb-bac-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH020', N'Iphone 12 256GB', 25990000, 3131, N'D:\QL_BanHang\Picture\iphone-12-trang-new-600x600-600x600.jpg')
INSERT [dbo].[tb_HangHoa] ([MaHang], [TenHang], [DonGia], [SoLuong], [Anh]) VALUES (N'HH021', N'Samsung s21+ 5G 128GB', 25990000, 12312, N'D:\QL_BanHang\Picture\samsung-galaxy-s21-plus-den-600x600-600x600.jpg')
GO
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [GioiTinh], [NamSinh], [SDT], [DiaChi], [Diem], [Email]) VALUES (N'KH001', N'Võ Thị Thuỳ Trang', N'Nữ', CAST(N'2001-09-15' AS Date), N'0912345678', N'351 Lạc Long Quân', 0, N'trang@gmail.com')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [GioiTinh], [NamSinh], [SDT], [DiaChi], [Diem], [Email]) VALUES (N'KH002', N'Phạm Như Ý', N'Nữ', CAST(N'2021-11-04' AS Date), N'0987123456', N'351 Lạc Long Quân', 0, N'nhuy@gmail.com')
GO
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV001', N'Trần Ngọc Nghĩa', N'Nam', CAST(N'2001-12-01' AS Date), N'351 Lạc Long Quân', N'0941414503', N'')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV002', N'Hồ Thanh Hải', N'Nam', CAST(N'2001-01-04' AS Date), N'Quận 4', N'1234567890', N'')
GO
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[tb_HangHoa] ([MaHang])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_HangHoa]
GO
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tb_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_HoaDon]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_KhachHang] FOREIGN KEY([KhachHang])
REFERENCES [dbo].[tb_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_KhachHang]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_NhanVien] FOREIGN KEY([NguoiLap])
REFERENCES [dbo].[tb_NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_NhanVien]
GO
