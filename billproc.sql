/*<TOAD_FILE_CHUNK>*/
set serveroutput on

create or replace type myarray is varray(1000) of number;
/

/*<TOAD_FILE_CHUNK>*/
create or replace function bBill(cid in number )
return number as
md myarray;
q myarray;
pr myarray;
rs myarray;
qt number:=0;
begin

--select model,quantity BULK COLLECT into md,q from transactions where customer=cid;
select 
     t.model,
     t.quantity,
     o.price
    BULK COLLECT into
     md,
     q,
     pr
    from transactions t LEFT OUTER JOIN computers o
    on(o.MODEL_NO = t.MODEL)
    where T.CUSTOMER=cid;
    
for i in 1..md.count loop
qt:=qt+(pr(i)*q(i));
end loop;
return qt;

--for i in 1..md.COUNT loop
--select price into pr(i) from computers where model_no=md(i);
--END LOOP;

--rs:=myarray();
--rs.EXTEND(md.COUNT);
--for i in 1..rs.COUNT loop
--  rs(i):=q(i)*pr(i);
--end loop;



--for i in 1..md.COUNT loop
--qt:=qt+rs(i);
--end loop;

--bill:=qt;

end;
/
show error;

/*<TOAD_FILE_CHUNK>*/
show errors;

