-- dershanenin toplam cirosunu veren fonksiyonu verelim
Create Or Replace Function t_ciro Return number AS
       f_result number;
Begin
  select sum(ODEMEMIKTAR) into f_result  from odeme;
  Return (f_result);
End;
/

select t_ciro C�RO from dual;
/

-- id'si verilen ogretmenin maa��n� veren fonksiyon.
Create Or Replace Function o_maas (o_id ogretmen.ogretmenid%type) Return number AS
       f_result number;
Begin
  select maas.maasmiktar into f_result
  from ogretmen inner join maas 
  using (maasid)
  where ogretmen.ogretmenid = o_id;
  Return (f_result);
End;
/

select o_maas(300) from dual;
