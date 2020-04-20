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
	NO_ARTISTE	SMALLINT		NOT NULL,
    NAS			NUMERIC(9,0)	NOT NULL,
    NOM			VARCHAR2(20)	NOT NULL,
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
CREATE TABLE EMPLOYE
(
    NO_EMPLOYE			SMALLINT		NOT NULL, /* sequence SEQ_EMPLOYE_NO_EMPLOYE */
    NAS					NUMERIC(9,0)	NOT NULL,
    NOM					VARCHAR2(10)	NOT NULL,
    PRENOM				VARCHAR2(10)	NOT NULL,
    SEXE				CHAR(1)			NOT NULL,
    DATE_NAISSANCE		DATE			NULL,
    DATE_EMBAUCHE		DATE			NOT NULL,
    FONCTION			VARCHAR2(15)	NOT NULL,
    SALAIRE				NUMERIC(6,0)	NULL,
    TELEPHONE_BUREAU	NUMERIC(10,0)	NULL,
    ADRESSE				VARCHAR2(15)	NULL,
    TELEPHONE_DOMICILE	NUMERIC(10,0)	NULL,
    NOM_DEPARTEMENT		VARCHAR2(5)		NULL,
    CONSTRAINT PK_EMPLOYE
					PRIMARY KEY (NO_EMPLOYE),
    CONSTRAINT U1_EMPLOYE
					UNIQUE (NAS),
    CONSTRAINT FK_EMP_DEPARTEMENT
					FOREIGN KEY (NOM_DEPARTEMENT)
					REFERENCES DEPARTEMENT (NOM_DEPARTEMENT)
);


/***********************************************************
	Séquence "SEQ_EMPLOYE_NO_EMPLOYE"
***********************************************************/
CREATE SEQUENCE SEQ_EMPLOYE_NO_EMPLOYE
			 INCREMENT BY 1
			 START WITH 1;
