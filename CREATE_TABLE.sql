--��renci tablosu
CREATE TABLE OGRENCI (
      OgrenciID number
      ,OgrenciAdi varchar2(20)
      ,OgrenciSoyadi varchar2(20)
      ,OgrenciTC varchar2(11)
      ,OgrenciDT date
      ,OgrenciAdres varchar2(50)
      ,OgrenciTelefon varchar2(12)
      ,SinifID number
      ,VeliID number
);


--��retmen tablosu
CREATE TABLE OGRETMEN (
      OgretmenID number
      ,OgretmenAdi varchar2(20)
      ,OgretmenSoyadi varchar(20)
      ,OgretmenTC varchar(11)
      ,OgretmenDT date
      ,OgretmenAdres varchar2(50)
      ,OgretmenTelefon varchar2(12)
      ,BransID number
      ,MaasID number
      ,Cinsiyet varhar(20)
     
);

--y�netici tablosu
CREATE TABLE YONETICI (
     YoneticiID number
     ,YoneticiAdi varchar2(20)
     ,YoneticiSoyadi varchar2(20)
     ,YoneticiTC varchar(11)
     ,YoneticiTelefon varchar2(12)
     ,YoneticiKullaniciAdi varchar2(20)
     ,YoneticiSifre varchar2(20)
);

--y�netici login tablosu(
CREATE TABLE LOGIN (
       LogID number
       ,LogTarih date
       ,LogIP varchar2(20)
       ,YoneticiID number
);

--veli tablosu
CREATE TABLE VELI (
      VeliID number
      ,VeliAdi varchar2(20)
      ,VeliSoyadi varchar(20)
      ,VeliTC varchar2(11)
      ,VeliTelefon varchar2(12)
      ,VeliAdres varchar2(50) 
);    

--maa� tablosu
CREATE TABLE MAAS (
      MaasID number
      ,MaasTarih date
      ,MaasMiktar decimal(15,2)     
);

--�deme tablosu 
CREATE TABLE ODEME (
      OdemeID number
      ,OdemeMiktar decimal(15,2)
      ,OdemeTarih date
      ,OdeyenAdi varchar2(20)
      ,OdeyenSoyadi varchar2(20)
      ,OgrenciID number
);

--devams�zl�k tablosu
CREATE TABLE DEVAMSIZLIK (
      DevamsizlikID number
      ,DevamsizlikTarih date
      ,DevamsizlikSure decimal(2,1)
      ,OgrenciID number
);

--grup tablosu
CREATE TABLE GRUP (
    GrupID number
    ,GrupAdi varchar2(20)

);
--s�n�f tablosu
CREATE TABLE SINIF (
     SinifID number
     ,SinifAdi varchar2(20)
     ,GrupID number
);

--dersler tablosu
CREATE TABLE DERSLER (
     DersID number
     ,DersAdi varchar2(20) 
     ,DersTarih date
     ,OgretmenID number
     ,SinifID number

);

--bran� tablosu
CREATE TABLE BRANS (
    BransID number
    ,BransAdi varchar2(20)
    
);

--deneme tablosu
CREATE TABLE DENEME (
     DenemeID number
     ,DenemeAdi varchar2(20)
     ,DenemeTarih varchar2(20)   
);

--sonu� tablosu
CREATE TABLE SONUC (
       SonucID number
       ,OgrenciID number
       ,DenemeID number
       ,Puan int
      
);

