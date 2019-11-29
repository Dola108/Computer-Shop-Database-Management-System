/*<TOAD_FILE_CHUNK>*/
set serveroutput on
create or replace trigger tt_name before insert on transactions

for each row
	declare
	p integer;
	r integer;
	s integer;
	q integer;
	cursor cc is select available from shop;
begin
	select available into p from computers where model_no = :NEW.model;
	select available into r from shop where shop_id = :NEW.shop_id and model_no = :NEW.model;
	s:=r-:NEW.quantity;
	q:=p-:NEW.quantity;
	if q<0 and s<0 then
		RAISE_APPLICATION_ERROR(-20008,'INVALID QUANTITY INPUT');
	else
		update computers set available = q where model_no = :NEW.model;
		update shop set available = s where shop_id = :NEW.shop_id and model_no = :NEW.model;
	end if;
end;
/

/*<TOAD_FILE_CHUNK>*/
show error;

