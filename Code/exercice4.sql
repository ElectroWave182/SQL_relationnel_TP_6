drop function
if exists
aug1000
cascade
;


create function
aug1000 (noDeptVoulu)
returns void
as $$
	
	
	declare
	
		plusHautSalaire int;
	
	
	begin
	
		select max (emp.sal)
		from emp
		into plusHautSalaire
		;
		
		
		for salaire, nom
		in
			select emp.sal, emp.ename
			from emp
			where
				emp.sal > 1500
				and emp.deptno = noDeptVoulu
		
		loop
			if salaire + 1000 > plusHautSalaire
			then
				raise exception
					"L'employé "
					|| nom
					|| " dépasserait le plus haut salaire avec cette augmentation."
				;
			end if
			;
			
		end loop
		;
	
	
		update emp
		set
			emp.sal = emp.sal + 1000
		where
			emp.sal > 1500
			and emp.deptno = noDeptVoulu
		;
	
	
	end
	
$$ LANGUAGE plpgsql
;
