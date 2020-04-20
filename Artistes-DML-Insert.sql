/* **********************************************************
	DML Insert
	Schéma MRD:	"Cas Projets Version 0"
	Auteur:		Sylvie Monjal - Cégep de Ste-Foy  	
********************************************************** */

/*===============================================================================
     Table DEPARTEMENT: 5 départements 
/*===============================================================================*/	

--=====================================================================================
-- Département 'Recherche'
INSERT INTO
	DEPARTEMENT
		(NOM_DEPARTEMENT,
		 NOM_COMPLET,
		 TELEPHONE)
	VALUES
		('RD',
		 'Recherche',
		 NULL);
--=====================================================================================
-- Département 'Finances'
INSERT INTO
	DEPARTEMENT
		(NOM_DEPARTEMENT,
		 NOM_COMPLET,
		 TELEPHONE)
	VALUES
		('Fin.',
		 'Finances',
		 NULL);
--=====================================================================================
-- Département 'Informatique'
INSERT INTO
	DEPARTEMENT
	VALUES
		('Info',
		 'Informatique',
		 NULL);
--=====================================================================================
-- Département 'Marketing'
INSERT INTO
	DEPARTEMENT
		(NOM_DEPARTEMENT,
		 NOM_COMPLET)
	VALUES
		('Markt',
		 'Marketing');
--=====================================================================================
-- Département 'Ventes'	 
INSERT INTO
	DEPARTEMENT
		(TELEPHONE,		
		 NOM_COMPLET,
		 NOM_DEPARTEMENT)
	VALUES
		(NULL,
		 'Ventes',
		 'Vente');


/*===============================================================================
     Table EMPLOYE: 18 employés
/*===============================================================================*/	

INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 398932209,
		 'Blow',
		 'Jow',
		 'M',
		 NULL ,
		 TO_DATE('1997-06-15','yyyy-mm-dd'),
		 'grand boss',
		 122000,
		 NULL,
		 NULL,
		 NULL,
		 NULL);		 
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 32883809,
		 'Ban',
		 'Ray',
		 'M',
		 NULL, 
		 TO_DATE('1998-07-15','yyyy-mm-dd'),
		 'vice-roi',
		 105000,
		 NULL,
		 NULL,
		 NULL,
		 NULL);
	 
--=====================================================================================
-- Département 'Recherche' --> aucun employé

--=====================================================================================
-- Département 'Finances' --> 2 employés
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 384115666,
		 'Lacroix',
		 'Etienne',
		 'M',
		 NULL, 
		 TO_DATE('2000-09-02','yyyy-mm-dd'),
		 'financier',
		 95000,
		 'Fin.',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 384115251,
		 'Gagnon',
		 'Eric',
		 'M',
		 NULL, 
		 TO_DATE('2003-01-21','yyyy-mm-dd'),
		 'comptable',
		 78400,
		 'Fin.',
		 NULL,
		 NULL,
		 NULL);

--=====================================================================================
-- Département 'Informatique' --> 9 employés
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 331936209, 'Gates',
		 'Bill',
		 'M',
		 NULL, 
		 TO_DATE('1998-07-15','yyyy-mm-dd'),
		 'directeur',
		 78000,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 324114256,
		 'Monjal',
		 'Sylvie',
		 'F',
		 NULL, 
		 TO_DATE('1998-09-15','yyyy-mm-dd'),
		 'analyste',
		 45000,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 344444254,
		 'Nadeau',
		 'Michel',
		 'M',
		 NULL, 
		 TO_DATE('2004-01-15','yyyy-mm-dd'),
		 'analyste',
		 35000,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 144144254,
		 'Gagnon',
		 'Carmen',
		 'F',
		 NULL, 
		 TO_DATE('1999-09-15','yyyy-mm-dd'),
		 'analyste',
		 42000,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 342224254,
		 'Gagnon',
		 'Martine',
		 'F',
		 NULL, 
		 TO_DATE('1998-03-02','yyyy-mm-dd'),
		 'programmeur',
		 38000,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 842884254,
		 'VanHoute',
		 'Eloi',
		 'M',
		 NULL, 
		 TO_DATE('2002-05-12','yyyy-mm-dd'),
		 'programmeur',
		 28000,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 342221111,
		 'Souci',
		 'Marcel',
		 'M',
		 NULL, 
		 TO_DATE('2015-03-02','yyyy-mm-dd'),
		 'programmeur',
		 34300,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 992221999,
		 'Souci',
		 'Marcel',
		 'M',
		 NULL, 
		 TO_DATE('2014-08-28','yyyy-mm-dd'),
		 'rédacteur',
		 35100,
		 'Info',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 399921991,
		 'Abott',
		 'Gino',
		 'M',
		 NULL, 
		 TO_DATE('2005-03-02','yyyy-mm-dd'),
		 'testeur',
		 40500,
		 'Info',
		 NULL,
		 NULL,
		 NULL);

--=====================================================================================
-- Département 'Marketing' --> 2 employés
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 392935550,
		 'Hey',
		 'Heidi',
		 'F',
		 NULL , 
		 TO_DATE('2015-07-22','yyyy-mm-dd'),
		 'cadre direction',
		 45000,
		 'Markt',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 444421991,
		 'Colin',
		 'Maillard',
		 'M',
		 NULL, 
		 TO_DATE('2005-03-02','yyyy-mm-dd'),
		 'analyste',
		 44500,
		 'Markt',
		 NULL,
		 NULL,
		 NULL);

--=====================================================================================
-- Département 'Ventes' --> 3 employés
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 311111150,
		 'Halou',
		 'Jean',
		 'F',
		 NULL , 
		 TO_DATE('2001-02-28','yyyy-mm-dd'),
		 'cadre direction',
		 80000,
		 'Vente',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 555521991,
		 'Bazoo',
		 'Marc',
		 'M', NULL, 
		 TO_DATE('2000-01-02','yyyy-mm-dd'),
		 'vendeur',
		 41500,
		 'Vente',
		 NULL,
		 NULL,
		 NULL);
INSERT INTO
	EMPLOYE
		(NO_EMPLOYE,
		 NAS,
		 NOM,
		 PRENOM,
		 SEXE,
		 DATE_NAISSANCE,
		 DATE_EMBAUCHE,
		 FONCTION,
		 SALAIRE,
		 NOM_DEPARTEMENT,
		 TELEPHONE_BUREAU,
		 ADRESSE,
		 TELEPHONE_DOMICILE)
	VALUES
		(SEQ_EMPLOYE_NO_EMPLOYE.NEXTVAL,
		 666621991,
		 'Zouzou',
		 'Corinne',
		 'M',
		 NULL, 
		 TO_DATE('2005-08-01','yyyy-mm-dd'),
		 'vendeur',
		 25500,
		 'Vente',
		 NULL,
		 NULL,
		 NULL);
		 
-- Sauvegarde des données
COMMIT;  
