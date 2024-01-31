-- ogrenci ekleyen proc yazalım.
create or replace procedure ogrekle(ogrid    in ogrenci.ogrenciid%type,
                                    ograd    in ogrenci.ogrenciadi%type,
                                    ogrsoyad in ogrenci.ogrencisoyadi%type) as
begin
  insert into OGRENCI
    (OGRENCIID, OGRENCIADI, OGRENCISOYADI)
  VALUES
    (ogrid, ograd, ogrsoyad);
  commit;
end;

/
begin 
   ogrekle (131, 'melihcan', 'kurtulmu�');
end;

/

-- ogrencinin devamsızlığını sorgulayan proc yazalım.
Create Or Replace Procedure ogr_devamsizlik As
  cursor c_devamsızlık is select * from devamsızlık;
  devamsızlık_veri c_devamsızlık%rowtype;
  
begin
  open c_devamsızlık;
  loop
    fetch c_devamsızlık
      into devamsızlık_veri;
    exit when c_devamsızlık%notfound;
    dbms_output.put_line('Ogrenci no: ' || devamsızlık_veri.OGRENCIID || ' ' ||
                         'Devamsızlık tarih:' ||
                         devamsızlık_veri.DEVAMSIZLIKTARIH);
  
  end loop;
  close c_devamsızlık;
end;
/

Begin
  ogr_devamsizlik;
End;
