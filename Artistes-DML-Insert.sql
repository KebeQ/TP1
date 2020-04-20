/*===============================================================================
     Table ARTISTES: 5 artistes 
/*===============================================================================*/	

INSERT INTO
	ARTISTE
		(NO_ARTISTE,
		 NAS,
		 NOM,
		 PRENOM,
		 NOM_SCENE,
		 TELEPHONE)
	VALUES
		(0,
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
		(1,
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
		(2,
		 222222222,
		 'Fougères',
		 'Léo',
		 'Fouki',
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
		(3,
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
		(4,
		 444444444,
		 'Onfroy',
		 'Jahseh',
		 'XXXTENTACION',
		 '4184444444');
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
INSERT INTO
	MEMBRE
		(NO_ARTISTE,
		 NOM_GROUPE,
		 ROLE)
	VALUES
		(/* no_artiste */,
		/* ' ' */,
		/* ' ' */);
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
		Desrocher',
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


		 
-- Sauvegarde des données
COMMIT;  
