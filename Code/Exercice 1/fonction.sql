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
			raise notice 'Erreur, il y a trop de pièces (nombre de pièces : %)', n;
		end if
		;
	
		return n;
		
	end
	

$$ LANGUAGE plpgsql;