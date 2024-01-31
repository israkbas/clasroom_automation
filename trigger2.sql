Create table odeme_log( 
       odemeid number,
       kim_yapti varchar2(20)
);

commit;

create or replace trigger silinen_odeme
       after delete on odeme
       for each row 
begin 
  insert into odeme_log 
  values(:OLD.odemeid, SYS_CONTEXT('USERENV','CURRENT_USER'));
End;

delete odeme where odemeid = 404;
commit;

select * from odeme;


