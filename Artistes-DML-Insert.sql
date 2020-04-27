/***********************************************************
        Table ARTISTE : 5 artistes
***********************************************************/	
INSERT INTO
	ARTISTE
		(NO_ARTISTE,
		 NAS,
		 NOM,
		 PRENOM,
		 NOM_SCENE,
		 TELEPHONE)
	VALUES
		(SEQ_ARTISTE_NO_ARTISTE.NEXTVAL,
		 000000000,
		 'Arvid',
		 'Félix',
		 'Pewidpie',
		 '4180000000');
		 
INSERT INTO
	ARTISTE
		(NO_ARTISTE,
		 NAS,
		 NOM,
		 PRENOM,
		 NOM_SCENE,
		 TELEPHONE)
	VALUES
		(SEQ_ARTISTE_NO_ARTISTE.NEXTVAL,
		 111111111,
		 'Paul',
		 'Logan',
		 'Maverick',
		 '4181111111');
		 
INSERT INTO
	ARTISTE
		(NO_ARTISTE,
		 NAS,
		 NOM,
		 PRENOM,
		 NOM_SCENE,
		 TELEPHONE)
	VALUES
		(SEQ_ARTISTE_NO_ARTISTE.NEXTVAL,
		 222222222,
		 'Fougères',
		 'Léo',
		 NULL,
		 '4182222222');
		 
INSERT INTO
	ARTISTE
		(NO_ARTISTE,
		 NAS,
		 NOM,
		 PRENOM,
		 NOM_SCENE,
		 TELEPHONE)
	VALUES
		(SEQ_ARTISTE_NO_ARTISTE.NEXTVAL,
		 333333333,
		 'Trudeau',
		 'Justin',
		 'Justrud',
		 '4183333333');
		 
INSERT INTO
	ARTISTE
		(NO_ARTISTE,
		 NAS,
		 NOM,
		 PRENOM,
		 NOM_SCENE,
		 TELEPHONE)
	VALUES
		(SEQ_ARTISTE_NO_ARTISTE.NEXTVAL,
		 444444444,
		 'Onfroy',
		 'Jahseh',
		 'XXXTENTACION',
		 '4184444444');
		 
/***********************************************************
        Table GROUPE : 3 groupes
***********************************************************/
INSERT INTO
	GROUPE
		(NOM,
		 CACHET_HABITUEL)
	VALUES
		('Imagine Dragon',
		1000);
		
INSERT INTO
	GROUPE
		(NOM,
		 CACHET_HABITUEL)
	VALUES
		('One Direction',
		500);
		
INSERT INTO
	GROUPE
		(NOM,
		 CACHET_HABITUEL)
	VALUES
		('Twenty One Pilots',
		800);
		
/***********************************************************
	Table Membre 
***********************************************************/
INSERT INTO
	MEMBRE
		(NO_ARTISTE,
		 NOM_GROUPE,
		 ROLE)
	VALUES
		(1,
		 'Imagine Dragon',
		 NULL);

INSERT INTO
	MEMBRE
		(NO_ARTISTE,
		 NOM_GROUPE,
		 ROLE)
	VALUES
		(2,
		 'Imagine Dragon',
		 'Chanteur');

INSERT INTO
	MEMBRE
		(NO_ARTISTE,
		 NOM_GROUPE,
		 ROLE)
	VALUES
		(1,
		 'Twenty One Pilots',
		 'Pianiste');

INSERT INTO 
	MEMBRE
		(NO_ARTISTE,
		 NOM_GROUPE,
		 ROLE)
	VALUES
		(3,
		 'One Direction',
		 'Guitariste');
		 
/***********************************************************
        Table CLIENT : 5 clients
***********************************************************/
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(SEQ_CLIENT_CODE.NEXTVAL,
		'Grimard',
		4181119293);
		
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(SEQ_CLIENT_CODE.NEXTVAL,
		'Desrocher',
		4189002059);
		
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(SEQ_CLIENT_CODE.NEXTVAL,
		'Bédard',
		4182227777);
		
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(SEQ_CLIENT_CODE.NEXTVAL,
		'Racine',
		4180000001);
		
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(SEQ_CLIENT_CODE.NEXTVAL,
		'Bergerons',
		5184554455);
		
/***********************************************************
        Table CONTRAT 
***********************************************************/
INSERT INTO
	CONTRAT
		(NO_CONTRAT,
		 NOM_GROUPE,
		 CODE_CLIENT,
		 DATE_CONTRAT,
		 DATE_PRESTATION,
		 HEURE_DEBUT_PRESTATION,
		 HEURE_FIN_PRESTATION,
		 CACHET_PREVUT)
	VALUES
		(SEQ_CONTRAT_NO_CONTRAT.NEXTVAL,
		 'Imagine Dragon',
		 1,
		 TO_DATE('2019-10-11', 'yyyy-mm-dd'),
		 TO_DATE('2020-09-01', 'yyyy-mm-dd'),
		 16,
		 20,
		 600);

INSERT INTO
	CONTRAT
		(NO_CONTRAT,
		 NOM_GROUPE,
		 CODE_CLIENT,
		 DATE_CONTRAT,
		 DATE_PRESTATION,
		 HEURE_DEBUT_PRESTATION,
		 HEURE_FIN_PRESTATION,
		 CACHET_PREVUT)
	VALUES
		(SEQ_CONTRAT_NO_CONTRAT.NEXTVAL,
		 'Imagine Dragon',
		 1,
		 TO_DATE('2020-12-02', 'yyyy-mm-dd'),
		 TO_DATE('2021-02-13', 'yyyy-mm-dd'),
		 18,
		 24,
		 400);

INSERT INTO
	CONTRAT
		(NO_CONTRAT,
		 NOM_GROUPE,
		 CODE_CLIENT,
		 DATE_CONTRAT,
		 DATE_PRESTATION,
		 HEURE_DEBUT_PRESTATION,
		 HEURE_FIN_PRESTATION,
		 CACHET_PREVUT)
	VALUES
		(SEQ_CONTRAT_NO_CONTRAT.NEXTVAL,
		 'One Direction',
		 4,
		 TO_DATE('2021-04-11', 'yyyy-mm-dd'),
		 TO_DATE('2021-06-16', 'yyyy-mm-dd'),
		 12,
		 18,
		 700);

INSERT INTO
	CONTRAT
		(NO_CONTRAT,
		 NOM_GROUPE,
		 CODE_CLIENT,
		 DATE_CONTRAT,
		 DATE_PRESTATION,
		 HEURE_DEBUT_PRESTATION,
		 HEURE_FIN_PRESTATION,
		 CACHET_PREVUT)
	VALUES
		(SEQ_CONTRAT_NO_CONTRAT.NEXTVAL,
		 'Imagine Dragon',
		 4,
		 TO_DATE('2019-05-23', 'yyyy-mm-dd'),
		 TO_DATE('2019-10-01', 'yyyy-mm-dd'),
		 16,
		 21,
		 650);
		 		 
/***********************************************************
        Table FACTURE : 3 factures 
***********************************************************/		 
INSERT INTO
	FACTURE
		(NO_FACTURE,
		 NO_CONTRAT,
		 DATE_FACTURE,
		 DATE_PAIEMENT,
		 MONTANT_FACTURE)
	VALUES
		(SEQ_FACTURE_NO_FACTURE.NEXTVAL,
		 1,
	 	 TO_DATE('2021-10-01', 'yyyy-mm-dd'),
		 TO_DATE('2021-11-01', 'yyyy-mm-dd'),
		 2000);

INSERT INTO
	FACTURE
		(NO_FACTURE,
		 NO_CONTRAT,
		 DATE_FACTURE,
		 DATE_PAIEMENT,
		 MONTANT_FACTURE)
	VALUES
		(SEQ_FACTURE_NO_FACTURE.NEXTVAL,
		 2,
		 TO_DATE('2021-02-01', 'yyyy-mm-dd'),
		 TO_DATE('2021-02-01', 'yyyy-mm-dd'),
		 1500);

INSERT INTO
	FACTURE
		(NO_FACTURE,
		 NO_CONTRAT,
		 DATE_FACTURE,
		 DATE_PAIEMENT,
		 MONTANT_FACTURE)
	VALUES
		(SEQ_FACTURE_NO_FACTURE.NEXTVAL,
		 3,
		 TO_DATE('2021-05-10', 'yyyy-mm-dd'),
		 TO_DATE('2021-07-07', 'yyyy-mm-dd'),
		 3400);
		 
-- Sauvegarde des données
COMMIT;  
