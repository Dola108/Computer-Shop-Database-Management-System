set serveroutput on
declare
bll number:=5;
begin
--Bill(5,bll);
DBMS_OUTPUT.PUT_LINE('T = '|| bBill(bll));
update customer set bill=bBill(bll) where customer_id=bll;
end;
/