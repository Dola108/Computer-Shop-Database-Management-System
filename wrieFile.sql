set serveroutput on
declare
f utl_file.file_type;
cursor c is select * from customer;

begin
    F:=utl_file.fopen('DATABASE', 'customer_updated.csv', 'w');
    utl_file.put(f, 'ID'||','||'Name'||','||'E-mail'||','||'Address'||','||'Bill');
    utl_file.new_line(f);
    for c_record in c
        loop
            utl_file.put(f, c_record.customer_id||','||c_record.customer_name||','||c_record.email||','||c_record.address||','||c_record.bill);
            utl_file.new_line(f);
        end loop;
    
    utl_file.fclose(f);
end;
/