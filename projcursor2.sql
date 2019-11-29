set serveroutput on
declare
c integer;
id integer;
nid integer;
temp integer;
cursor c_name is
select tran_no, customer from transactions;

begin
id:=1;
c:=0;
temp:=0;
for c_record in c_name
loop
    if c_record.customer=id
    then
        c:=c+1;
        if c>temp
        then 
            temp:=c;
            nid:=id;
        end if;    
    end if;
end loop;
dbms_output.put_line('Highest number of transactions that is: ' || temp || ' were made by customer: ' || nid);
end;
/