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
		(100,
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
		(101,
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
		(102,
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
		(103,
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
		(104,
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

		 
-- Sauvegarde des données
COMMIT;  
