create or replace function propMgr () returns real as $$


	declare
	
		nbEmployes integer;
		nbManager integer;
		proportion real;
		
	
	begin
		
		select count (empno)
		into nbEmployes
		from emp
		;
	
		-- Erreur : table vide
		if nbEmployes = 0
		then
			raise tableVide;
		end if;
	
		select count (empno)
		into nbManager
		from emp
		where job = 'MANAGER'
		;
	
		proportion := 100 * nbManager / nbEmployes :: real;
		return proportion;
		
	end

	
	exception
	
		when tableVide
		then
			raise warning 'Pas d''employé';
			return null;


$$ LANGUAGE plpgsql;