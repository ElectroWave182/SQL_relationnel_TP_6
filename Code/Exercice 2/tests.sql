select propMgr ();

delete from emp cascade;
select propMgr ();
source creationTable.sql

/*
 *  5)
 *  Nous avons vidé la table de ses employés,
 *  avant d'exécuter notre fonction ;
 *  cela a provoqué l'erreur prévu par le script.
 */ 