select * from cat ();


-- Test d'augmentation de salaire :

aug1000 (20);
select * from emp;

while true
loop
	aug1000 (20);
end loop
;

-- La dernière augmentation n'a évidemment pas lieu.
