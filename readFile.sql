set serveroutput on
declare
    f utl_file.file_type;
    line varchar(1000);
    id customerrr.id%type;
    name customerrr.name%type;
    age customerrr.age%type;
begin
    f:=utl_file.fopen('DATABASE', 'customer.csv', 'r');
    if utl_file.is_open(f) then
        utl_file.get_line(f, line, 1000);
        loop begin
            utl_file.get_line(f, line, 1000);
            if line is null then exit;
            end if;
            id:=regexp_substr(line, '[^,]', 1, 1);
            age:=regexp_substr(line, '[^,]+', 1, 3);
            name:=regexp_substr(line, '[^,]+', 1, 2);
            insert into customerrr values(id, name, age);
            dbms_output.put_line(line);
            exception when no_data_found then exit;
            end;
        end loop;
    end if;
    utl_file.fclose(f);
    end;