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
		(100,
		'Grimard',
		4181119293);
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(101,
		'Desrocher',
		4189002059);
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(103,
		'Bédard',
		4182227777);
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(104,
		'Racine',
		4180000001);
INSERT INTO
	CLIENT
		(CODE,
		 NOM,
		 TELEPHONE)
	VALUES
		(105,
		'Bergerons',
		4184554455);
INSERT INTO
	CONTRAT
		(NO_CONTRAT,
		 NOM_GROUPE,
		 CODE_CLIENT,
		 DATE_CONTRAT,
		 DATE_PRESTATION,
		 HEURE_DEBUT_PRESTATION,
		 HEURE_FIN_PRESTATION,
		 CACHET_PREVU)
	VALUES
		(,
		'',
		,
		,
		,
		,
		,
		);
INSERT INTO
	CLIENT
		(NO_FACTURE,
		 NO_CONTRAT,
		 DATE_FACTURE,
		 DATE_PAIEMENT,
		 MONTANT_FACTURE)
	VALUES
		(0,
		/*No contrat */,
		TO_DATE('2021-10-01');

		 
-- Sauvegarde des données
COMMIT;  
