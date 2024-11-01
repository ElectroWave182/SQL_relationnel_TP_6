drop function
if exists
cat
cascade
;


create function
cat ()
returns setof varchar
as $$


	declare
	
		nomTable varchar;
		
		
	begin
	
		for nomTable
		in
			select tablename
			from pg_tables
			where tableowner = 'm1028'
			
		loop
			return next nomTable;
		
		end loop
		;
	
	
	end
	
$$ LANGUAGE plpgsql
;
