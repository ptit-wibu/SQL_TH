use baitap;

Create table NHANVIEN(
	MANV Char(4),
	HOTEN varchar(40),
	SODT varchar(20),
	NGVL date,
	PRIMARY KEY(MANV)
);

Create table KHACHHANG(
	MAKH char(4),
	HOTEN varchar(40),
	DCHI varchar(50),
	SODT varchar(20),
	NGSINH date,
	DOANHSO decimal(15,2),
	NGDK date,
	PRIMARY KEY(MAKH)
);

Create table SANPHAM(
	MASP char(4),
	TENSP varchar(40),
	DVT varchar(20),
	NUOCSX varchar(40),
	GIA decimal(15,2),
	PRIMARY KEY(MASP)
);

create table HOADON(
	SOHD integer,
	NGHD date,
	MAKH char(4),
	MANV char(4) NULL,
	TRIGIA decimal(15,2),
	primary key (SOHD),
	FOREIGN KEY (MAKH) references KHACHHANG(MAKH),
	foreign key (MANV) references NHANVIEN(MANV),
);

create table CTHD(
	SOHD integer,
	MASP char(4),
	SL integer,
	foreign key(SOHD) references HOADON(SOHD),
	foreign key(MASP) references SANPHAM(MASP),
);

insert into NHANVIEN values ('NV01' , 'Nguyen Nhu Nhut' , '0927345678', '2006-04-13')
insert into NHANVIEN values ('NV02' , 'Le Thi Phi Yen' , '0987567390', '2006-04-21')
insert into NHANVIEN values ('NV03' , 'Nguyen Van B' , '0997047382', '2006-04-27')
insert into NHANVIEN values ('NV04' , 'Ngo Thanh Tuan' , '0913758498', '2006-06-24')
insert into NHANVIEN values ('NV05' , 'Nguyen Thi Truc Thanh' , '0918590387', '2006-07-20')

insert into KHACHHANG values ('KH01', 'Nguyen Van A', '731 Tran Hung Dao, Q5, TpHCM', '08823451', '1960-10-22', '13060000', '2006-07-22')
insert into KHACHHANG values ('KH02', 'Tran Ngoc Han', '23/5 Nguyen Trai, Q5, TpHCM', '0908256478', '1974-04-03', '280000', '2006-07-30')
insert into KHACHHANG values ('KH03', 'Tran Ngoc Linh', '45 Nguyen Canh Chan, Q1, TpHCM', '0938776266', '1980-06-12', '3860000', '2006-08-05')
insert into KHACHHANG values ('KH04', 'Tran Minh Long', '50/34 Le Dai Hanh, Q10, TpHCM', '0917325476', '1965-03-09', '250000', '2006-10-02')
insert into KHACHHANG values ('KH05', 'Le Nhat Minh', '34 Truong Dinh, Q3, TpHCM', '08246108', '1950-03-10', '21000', '2006-10-28')
insert into KHACHHANG values ('KH06', 'Le Hoai Thuong', '277 Nguyen Van Cu, Q5, TpHCM', '08631738', '1981-12-31', '915000', '2006-11-24')
insert into KHACHHANG values ('KH07', 'Nguyen Van Tam', '32/3 Tran Binh Trong, Q5, TpHCM', '0916783565', '1971-04-06', '12500', '2006-12-01')
insert into KHACHHANG values ('KH08', 'Pham Thi Thanh', '45/2 An Duong Vuong, Q5, TpHCM', '0938435756', '1971-01-10', '365000', '2006-12-13')
insert into KHACHHANG values ('KH09', 'Le Ha Vinh', '873 Le Hong Phong, Q5, TpHCM', '08654863', '1979-09-03', '70000', '2007-01-14')
insert into KHACHHANG values ('KH10', 'Ha Duy Lap', '34/34B Nguyen Trai, Q1, TpHCM', '08768904', '1983-05-02', '67500', '2007-01-16')

insert into SANPHAM values ('BC01', 'But chi', 'cay', 'Trung Quoc', '3000')
insert into SANPHAM values ('BC02', 'But chi', 'cay', 'Thai Lan', '5000')
insert into SANPHAM values ('BC03', 'But chi', 'cay', 'Viet Nam', '3500')
insert into SANPHAM values ('BC04', 'But chi', 'hop', 'Viet Nam', '30000')
insert into SANPHAM values ('BB01', 'But bi', 'cay', 'Viet Nam', '5000')
insert into SANPHAM values ('BB02', 'But bi', 'cay', 'Trung Quoc', '7000')
insert into SANPHAM values ('BB03', 'But bi', 'hop', 'Thai Lan', '100000')
insert into SANPHAM values ('TV01', 'Tap 100 giay mong', 'quyen', 'Trung Quoc', '2500')
insert into SANPHAM values ('TV02', 'Tap 200 giay mong', 'quyen', 'Trung Quoc', '4500')
insert into SANPHAM values ('TV03', 'Tap 100 giay lot', 'quyen', 'Viet Nam', '3000')
insert into SANPHAM values ('TV04', 'Tap 200 giay lot', 'quyen', 'Viet Nam', '5500')
insert into SANPHAM values ('TV05', 'Tap 100 trang', 'chuc', 'Viet Nam', '23000')
insert into SANPHAM values ('TV06', 'Tap 200 trang', 'chuc', 'Viet Nam', '53000')
insert into SANPHAM values ('TV07', 'Tap 100 trang', 'chuc', 'Trung Quoc', '34000')
insert into SANPHAM values ('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc','40000')
insert into SANPHAM values ('ST02', 'So tay loai 1', 'quyen', 'Viet Nam','55000')
insert into SANPHAM values ('ST03', 'So tay loai 2', 'quyen', 'Viet Nam','51000')
insert into SANPHAM values ('ST04', 'So tay', 'quyen', 'Thai Lan','55000')
insert into SANPHAM values ('ST05', 'So tay mong', 'quyen', 'Thai Lan','20000')
insert into SANPHAM values ('ST06', 'Phan viet bang', 'hop', 'Viet Nam','5000')
insert into SANPHAM values ('ST07', 'Phan khong bui', 'hop', 'Viet Nam','7000')
insert into SANPHAM values ('ST08', 'Bong bang', 'cai', 'Viet Nam','1000')
insert into SANPHAM values ('ST09', 'But long', 'cay', 'Viet Nam','5000')
insert into SANPHAM values ('ST10', 'But long', 'cay', 'Trung Quoc','7000')

insert into HOADON values ('1001', '2006-07-23', 'KH01', 'NV01', '320000')
insert into HOADON values ('1002', '2006-08-12', 'KH01', 'NV02', '840000')
insert into HOADON values ('1003', '2006-08-23', 'KH02', 'NV01', '100000')
insert into HOADON values ('1004', '2006-09-01', 'KH02', 'NV01', '180000')
insert into HOADON values ('1005', '2006-10-20', 'KH01', 'NV02', '3800000')
insert into HOADON values ('1006', '2006-10-16', 'KH01', 'NV03', '2430000')
insert into HOADON values ('1007', '2006-10-28', 'KH03', 'NV03', '510000')
insert into HOADON values ('1008', '2006-10-28', 'KH01', 'NV03', '440000')
insert into HOADON values ('1009', '2006-10-28', 'KH03', 'NV04', '200000')
insert into HOADON values ('1010', '2006-11-01', 'KH01', 'NV01', '5200000')
insert into HOADON values ('1011', '2006-11-04', 'KH04', 'NV03', '250000')
insert into HOADON values ('1012', '2006-11-30', 'KH05', 'NV03', '21000')
insert into HOADON values ('1013', '2006-12-12', 'KH06', 'NV01', '5000')
insert into HOADON values ('1014', '2006-12-31', 'KH03', 'NV02', '3150000')
insert into HOADON values ('1015', '2007-01-01', 'KH06', 'NV01', '910000')
insert into HOADON values ('1016', '2007-01-01', 'KH07', 'NV02', '12500')
insert into HOADON values ('1017', '2007-01-02', 'KH08', 'NV03', '35000')
insert into HOADON values ('1018', '2007-01-13', 'KH08', 'NV03', '330000')
insert into HOADON values ('1019', '2007-01-13', 'KH01', 'NV03', '30000')
insert into HOADON values ('1020', '2007-01-14', 'KH09', 'NV04', '70000')
insert into HOADON values ('1021', '2007-01-16', 'KH10', 'NV03', '67300')
insert into HOADON values ('1022', '2007-01-16',NULL , 'NV03', '7000')
insert into HOADON values ('1023', '2007-01-17',NULL , 'NV01', '330000')

insert into CTHD values ('1001' , 'TV02', '10')
insert into CTHD values ('1001' , 'ST01', '5')
insert into CTHD values ('1001' , 'BC01', '5')
insert into CTHD values ('1001' , 'BC02', '10')
insert into CTHD values ('1001' , 'ST08', '10')
insert into CTHD values ('1002' , 'BC04', '20')
insert into CTHD values ('1002' , 'BB01', '20')
insert into CTHD values ('1002' , 'BB02', '20')
insert into CTHD values ('1003' , 'BB03', '10')
insert into CTHD values ('1004' , 'TV01', '20')
insert into CTHD values ('1004' , 'TV02', '10')
insert into CTHD values ('1004' , 'TV03', '10')
insert into CTHD values ('1004' , 'TV04', '10')
insert into CTHD values ('1005' , 'TV05', '50')
insert into CTHD values ('1005' , 'TV06', '50')
insert into CTHD values ('1006' , 'TV07', '20')
insert into CTHD values ('1006' , 'ST01', '30')
insert into CTHD values ('1006' , 'ST02', '10')
insert into CTHD values ('1007' , 'ST03', '10')
insert into CTHD values ('1008' , 'ST04', '8')
insert into CTHD values ('1009' , 'ST05', '10')
insert into CTHD values ('1010', 'TV07', '50')
insert into CTHD values ('1010', 'ST07', '50')
insert into CTHD values ('1010', 'ST08', '100')
insert into CTHD values ('1010', 'ST04', '50')
insert into CTHD values ('1010', 'TV03', '100')
insert into CTHD values ('1011', 'ST06', '50')
insert into CTHD values ('1012', 'ST07', '3')
insert into CTHD values ('1013', 'ST08', '5')
insert into CTHD values ('1014', 'BC02', '80')
insert into CTHD values ('1014', 'BB02', '100')
insert into CTHD values ('1014', 'BC04', '60')
insert into CTHD values ('1014', 'BB01', '50')
insert into CTHD values ('1015', 'BB02', '30')
insert into CTHD values ('1015', 'BB03', '7')
insert into CTHD values ('1016', 'TV01', '5')
insert into CTHD values ('1017', 'TV02', '1')
insert into CTHD values ('1017', 'TV03', '1')
insert into CTHD values ('1017', 'TV04', '5')
insert into CTHD values ('1018', 'ST04', '6')
insert into CTHD values ('1019', 'ST05', '1')
insert into CTHD values ('1019', 'ST06', '2')
insert into CTHD values ('1020', 'ST07', '10')
insert into CTHD values ('1021', 'ST08', '5')
insert into CTHD values ('1021', 'TV01', '7')
insert into CTHD values ('1021', 'TV02', '10')
insert into CTHD values ('1022', 'ST07', '1')
insert into CTHD values ('1023', 'ST06', '6')

/* Cau 1  In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất.*/
select a.MASP, a.TENSP from SANPHAM a where a.NUOCSX = 'Trung Quoc'

/*Cau 2 In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cây”, ”quyển”.*/
select a.MASP, a.TENSP from SANPHAM a where a.DVT = 'cay' or a.DVT = 'quyen'

/* Cau 3  In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.*/
select a.MASP, a.TENSP from SANPHAM a where a.MASP like 'B%01'
 
/* Cau 4 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 20.000 đến 30.000.*/
select a.MASP, a.TENSP from SANPHAM a where a.NUOCSX = 'Trung Quoc' AND  a.GIA BETWEEN 20000 AND 30000

/* Cau 5 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” hoặc “Thái Lan” sản xuất có giá từ
20.000 đến 30.000.*/
select a.MASP, a.TENSP from SANPHAM a where (a.NUOCSX = 'Trung Quoc' or a.NUOCSX = 'Thai Lan') AND  a.GIA BETWEEN 20000 AND 30000

/* Cau 6 In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007. */
select a.SOHD, a.TRIGIA from HOADON a where a.NGHD = '2007-01-01' or a.NGHD =  '2007-01-02'

/* Cau 7 In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của óa đơn (giảm dần).*/
select a.SOHD, a.TRIGIA from HOADON a where a.NGHD like '2007-01-%'
ORDER BY a.NGHD ASC , a.TRIGIA DESC ; 

/* Cau 8 In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.*/
select a.MAKH, a.HOTEN from KHACHHANG a 
join HOADON b on a.MAKH = b.MAKH
where b.NGHD = '2007-01-01';

select a.MAKH, a.HOTEN from KHACHHANG a , HOADON b 
where a.MAKH = b.MAKH AND b.NGHD = '2007-01-01'

/* Cau 9 In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyễn Văn A” mua trong háng 10/2006.*/
select a.MASP, a.TENSP from SANPHAM a
join CTHD b on b.MASP = a.MASP
join HOADON c on c.SOHD = b.SOHD
join KHACHHANG d on d.MAKH = c.MAKH
where d.HOTEN = 'Nguyen Van A' and c.NGHD like '2006-10-%'

/* Cau 10 In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyễn Văn B” lập trong ngày 10/10/2006.*/
SELECT a.SOHD, a.TRIGIA from HOADON a
join NHANVIEN b on b.MANV = a.MANV
where b.HOTEN = 'Nguyen Van B' and a.NGHD = '2006-10-10'

/* Cau 11 Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.*/
SELECT DISTINCT a.SOHD from CTHD a where a.MASP = 'BB01' or a.MASP = 'BB02'

/* Cau 12 Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số ượng từ 10 đến 20.*/
SELECT DISTINCT a.SOHD from CTHD a where a.MASP = 'BB01' or a.MASP = 'BB02' and a.SL BETWEEN 10 and 20

/* Cau 13 Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số ượng từ 10 đến 20.*/
SELECT a.SOHD from CTHD a where a.SL BETWEEN 10 and 20 and a.MASP = 'BB01' 
AND SOHD in (SELECT b.SOHD from CTHD b where b.MASP = 'BB02')

SELECT DISTINCT a.SOHD from CTHD a where a.SL BETWEEN 10 and 20 and a.MASP in ('BB01', 'BB02')

SELECT a.SOHD
FROM CTHD a
WHERE a.SL BETWEEN 10 AND 20 AND a.MASP IN ('BB01', 'BB02')
GROUP BY a.SOHD
HAVING COUNT(DISTINCT a.MASP) = 2;

/* Cau 14 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất hoặc các sản phẩm được bán a trong ngày 1/1/2007.*/
SELECT a.MASP, a.TENSP
from SANPHAM a
join CTHD b on a.MASP = b.MASP
join HOADON c on b.SOHD = c.SOHD
where a.NUOCSX = 'Trung Quoc' or c.NGHD = '2007-01-01'

/* Cau 15 In ra danh sách các sản phẩm (MASP,TENSP) không bán được.*/
SELECT a.MASP, a.TENSP
from SANPHAM a
left join CTHD b on a.MASP = b.MASP
where b.MASP is NULL 

select a.MASP, a.TENSP
from SANPHAM a
where a.MASP NOT IN (SELECT b.MASP from CTHD b)

SELECT a.MASP, a.TENSP
FROM SANPHAM a
LEFT JOIN CTHD b ON a.MASP = b.MASP
GROUP BY a.MASP, a.TENSP
HAVING COUNT(b.MASP) = 0;

/* 16. In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.*/
SELECT MASP, TENSP
FROM  SANPHAM c
WHERE MASP NOT IN ( SELECT A.MASP
FROM  CTHD a, HOADON b
WHERE a.SOHD=b.SOHD AND b.NGHD like '2006-%')

/*17 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất không bán được trong năm 2006.*/
select a.MASP, a.TENSP
from SANPHAM a
where a.NUOCSX = 'Trung Quoc' and a.MASP not in (
SELECT b.MASP
from CTHD b, HOADON c
where c.SOHD = b.SOHD and c.NGHD like '2006-%'
)

/*18. Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?*/
select COUNT(*) as cnt
from HOADON a
where a.MAKH is NULL 

/*19. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?*/
select MAX(a.TRIGIA) , MIN(a.TRIGIA)
from HOADON a

/*20. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?*/
SELECT AVG(a.TRIGIA)
from HOADON a
where a.NGHD like '2006-%'
