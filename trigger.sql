-- güncellenen maaslarýn ve maaþýn zamsýz halinin logunu tutsun
create table maas_log(
       MAASID number,
       eski_maas NUMBER(15,2),
       yeni_maas NUMBER(15,2),
       guncel_tarih date
);

commit;


CREATE OR REPLACE TRIGGER MAAS_ZAM
  AFTER UPDATE ON MAAS
  FOR EACH ROW
Begin
insert into maas_log
  values
    (:OLD.MAASID, :OLD.maasmiktar, :NEW.maasmiktar, sysdate);
End;

UPDATE MAAS SET MAASMIKTAR = MAASMIKTAR*1.05;
COMMIT;

select* from maas_log;
