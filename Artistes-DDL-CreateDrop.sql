/*  Suppression des tables et séquences */
DROP TABLE ARTISTE;
DROP SEQUENCE SEQ_EMPLOYE_NO_EMPLOYE;

DROP TABLE DEPARTEMENT;

/* Création des tables et séquences */
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

CONSTRAINT U1_EMPLOYE
					UNIQUE (NAS),
    CONSTRAINT FK_EMP_DEPARTEMENT
					FOREIGN KEY (NOM_DEPARTEMENT)
					REFERENCES DEPARTEMENT (NOM_DEPARTEMENT)
/***********************************************************
	Séquence "SEQ_EMPLOYE_NO_EMPLOYE"
***********************************************************/
CREATE SEQUENCE SEQ_EMPLOYE_NO_EMPLOYE
			 INCREMENT BY 1
			 START WITH 1;
