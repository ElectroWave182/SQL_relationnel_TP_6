create or replace function nbParts () returns integer as $$


	declare
	
		n integer;
		
	
	begin
	
		select count (partno)
		into n
		from parts
		;
		
		if n > 6
		then
			raise notice 'Erreur, il y a trop de pi�ces (nombre de pi�ces : %)', n;
		end if
		;
	
		return n;
		
	end
	

$$ LANGUAGE plpgsql;