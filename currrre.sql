set serveroutput on
create or replace procedure setBill(cid in integer , bill out varchar) is
y integer;
q integer;
ll integer:=0;
cursor d is select distinct customer_id from transactions where customer_id=cid;
d_rec d%rowtype;
begin
    select count(distinct model_no) into y from transactions where book_id=bkid;
    
    if y=0 then 
        DBMS_OUTPUT.PUT_LINE('   NOT SOLD YET');
    
    elsif y=1 then
        select cust_id into q from issue where book_id=bkid;
        select email into cnm from customer where c_id=q;
        DBMS_OUTPUT.PUT_LINE('   SOLD TO : '||cnm);
    
    else
        DBMS_OUTPUT.PUT_LINE('Sold to : ');
        select count (distinct cust_id) into q from issue where book_id=bkid;
        open d;
            loop
            fetch d into d_rec;
             ll:=ll+1;
            select email into cnm from customer where c_id=d_rec.cust_id;
            DBMS_OUTPUT.PUT_LINE('         '||ll||'. '||cnm||' ');
            exit when d%rowcount> q-1;
            end loop;
        close d;
    end if;
end;
/
show error;
