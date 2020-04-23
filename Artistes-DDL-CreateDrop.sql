/* Suppression des tables et séquences */
DROP TABLE FACTURE,
	DROP SEQUENCE SEQ_FACTURE_NO_FACTURE,	
DROP TABLE CLIENT,
	DROP SEQUENCE SEQ_CLIENT_CODE,
DROP TABLE CONTRAT,
	DROP SEQUENCE SEQ_CONTRAT_NO_CONTRAT,	
DROP TABLE MEMBRE,		
DROP TABLE GROUPE,
DROP TABLE ARTISTE,
	DROP SEQUENCE SEQ_ARTISTE_NO_ARTISTE;
	
/* Création des tables */
/***********************************************************
	Table "ARTISTE"
***********************************************************/
CREATE TABLE ARTISTE
(
	NO_ARTISTE	SMALLINT	NOT NULL,
	NAS		NUMERIC(9,0)	NOT NULL,
	NOM		VARCHAR2(20)	NOT NULL,
	PRENOM		VARCHAR2(15)	NOT NULL, 	
	NOM_SCENE	VARCHAR2(25)	NULL,
	TELEPHONE	NUMERIC(10,0)	NOT NULL,
	
	CONSTRAINT PK_ARTISTE
		PRIMARY KEY (NO_ARTISTE),
	CONSTRAINT U1_ARTISTE
		UNIQUE (NAS)
);

/***********************************************************
	Table "GROUPE"
***********************************************************/
CREATE TABLE GROUPE
(
	NOM		VARCHAR2(20)	NOT NULL,
	CACHET_HABITUEL	NUMERIC(6,0)	NOT NULL,
	
	CONSTRAINT PK_GROUPE
		PRIMARY KEY (NOM)
);

/***********************************************************
	Table "MEMBRE"
***********************************************************/
CREATE TABLE MEMBRE 
(
	NO_ARTISTE	SMALLINT	NOT NULL,
	NOM_GROUPE	VARCHAR2(20)	NOT NULL,
	ROLE		VARCHAR2(15)	NULL,
	
	CONSTRAINT PK_MEMBRE
		PRIMARY KEY (NO_ARTISTE),
		PRIMARY KEY (NOM_GROUPE),
	
	CONSTRAINT FK_MEMBRE_ARTISTE
		FOREIGN KEY (NO_ARTISTE)
		REFERENCES	ARTISTE (NO_ARTISTE),
	
	CONSTRAINT FK_MEMBRE_GROUPE
		FOREIGN KEY (NOM_GROUPE)
		REFERENCES	GROUPE (NOM)
);

/***********************************************************
	Table "CLIENT"
***********************************************************/
CREATE TABLE CLIENT
(
	CODE		SMALLINT	NOT NULL,
	NOM		VARCHAR2(30)	NOT NULL,
	TELEPHONE	NUMERIC(10,0)	NOT NULL,
	
	CONSTRAINT PK_CLIENT
		PRIMARY KEY (CODE)
);

/***********************************************************
	Table "CONTRAT"
***********************************************************/
CREATE TABLE CONTRAT
(
	NO_CONTRAT			SMALLINT	NOT NULL,
	NOM_GROUPE			VARCHAR2(20)	NOT NULL,
	CODE_CLIENT			SMALLINT	NOT NULL,
	DATE_CONTRAT			DATE		NOT NULL,
	DATE_PRESTATION			DATE		NOT NULL,
	HEURE_DEBUT_PRESENTATION	SMALLINT	NOT NULL,
	HEURE_FIN_PRESTATION		SMALLINT	NOT NULL,
	CACHET_PREVUT			NUMERIC(6,0)	NOT NULL,
	
	CONSTRAINT PK_CONTRAT
		PRIMARY KEY (NO_CONTRAT),
	
	CONSTRAINT FK_CONTRAT_GROUPE
		FOREIGN KEY (NOM_GROUPE)
		REFERENCES	GROUPE (NOM),
	
	CONSTRAINT FK_CONTRAT_CLIENT
		FOREIGN KEY (CODE_CLIENT)
		REFERENCES	CLIENT (CODE)
);

/***********************************************************
	Table "FACTURE"
***********************************************************/
CREATE TABLE FACTURE
(
	NO_FACTURE	SMALLINT	NOT NULL,
	NO_CONTRAT	SMALLINT	NOT NULL,
	DATE_FACTURE	DATE		NOT NULL,
	DATE_PAIEMENT	DATE		NULL,
	MONTANT_FACTURE	NUMERIC(6,0)	NOT NULL,
	
	CONSTRAINT PK_FACTURE
		PRIMARY KEY (NO_FACTURE),
	
	CONSTRAINT FK_FACTURE_CONTRAT
		FOREIGN KEY (NO_CONTRAT)
		REFERENCES	CONTRAT (NO_CONTRAT),
	
	CONSTRAINT U1_FACTURE
		UNIQUE (NO_CONTRAT)
);
	
/* Création des Séquences */
/***********************************************************
	Séquence "SEQ_ARTISTE_NO_ARTISTE"
***********************************************************/
CREATE SEQUENCE SEQ_ARTISTE_NO_ARTISTE
	INCREMENT BY 1
	START WITH 1;
	
/***********************************************************
	Séquence "SEQ_FACTURE_NO_FACTURE"
***********************************************************/
CREATE SEQUENCE SEQ_FACTURE_NO_FACTURE
	INCREMENT BY 1
	START WITH 1;

/***********************************************************
	Séquence "SEQ_CONTRAT_NO_CONTRAT"
***********************************************************/
CREATE SEQUENCE SEQ_CONTRAT_NO_CONTRAT
	INCREMENT BY 1
	START WITH 1;

/***********************************************************
	Séquence "SEQ_CLIENT_CODE"
***********************************************************/
CREATE SEQUENCE SEQ_CLIENT_CODE
	INCREMENT BY 1
	START WITH 1;
