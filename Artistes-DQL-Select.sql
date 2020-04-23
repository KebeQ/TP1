/***********************************************************
        Script C1
***********************************************************/
SELECT
        NO_ARTISTE,
        PRENON,
        NOM,
        NOM_SCENE
FROM
        ARTISTE
WHERE 
        NOM_SCENE IS NOT NULL       
ORDER BY
        NOM, PRENOM;
        
/***********************************************************
        Script C2
***********************************************************/
SELECT
        NO_CONTRAT,
        DATE_CONTRAT,
        DATE_PRESTATION
FROM
        CONTRAT
WHERE
        DATE_CONTRAT = '2019' AND DATE_PRESTATION = '2020'
ORDER BY 
        DATE_CONTRAT DESC;

/***********************************************************
        Script C3
***********************************************************/
SELECT
        CLIENT.CODE,
        CLIENT.NOM,
        CLIENT.TELEPHONE,        
        CONTRAT.NO_CONTRAT,
        CONTRAT.DATE_CONTRAT,
        CONTRAT.CACHET_PREVUT
FROM
        CLIENT, CONTRAT
ORDER BY 
        CLIENT.NOM;

/***********************************************************
        Script C4
***********************************************************/
SELECT 
        GROUPE.NOM,
        ARTISTE.NOM,
        ARTISTE.PRENOM,
        ARTISTE.TELEPHONE,
        MEMBRE.ROLE
FROM
        GROUPE, ARTISTE, MEMBRE
WHERE
        MEMBRE.NO_ARTISTE IS NOT NULL AND MEMBRE.ROLE IS NOT NULL
ORDER BY 
        GROUPE.NOM;

/***********************************************************
        Script C5
***********************************************************/
SELECT
        CLIENT.NOM,
        CONTRAT.NO_CONTRAT,
        CONTRAT.DATE_CONTRAT,
        CONTRAT.DATE_PRESTATION,
        CONTRAT.HEURE_DEBUT_PRESENTATION,
        CONTRAT.HEURE_FIN_PRESTATION	
FROM
        CLIENT, CONTRAT
WHERE
        CONTRAT.DATE_CONTRAT BETWEEN '2019-09-01' AND '2019-10-31'
ORDER  BY
        CLIENT.NOM;

/***********************************************************
        Script C6
***********************************************************/
SELECT 
        CONTRAT.NO_CONTRAT,
        CONTRAT.DATE_CONTRAT,
        CONTRAT.NOM_GROUPE,
        GROUPE.CACHET_HABITUEL,
        CONTRAT.CACHET_PREVUT	
FROM
        CONTRAT, GROUPE
WHERE 
        (GROUPE.CACHET_HABITUEL - CONTRAT.CACHET_PREVU) >= 500
ORDER BY
        GROUPE.CACHET_HABITUEL DESC;
        
/***********************************************************
        Script C7
***********************************************************/
SELECT
        FACTURE.NO_FACTURE,
        FACTURE.DATE_FACTURE,
        FACTURE.MONTANT_FACTURE,
        CONTRAT.DATE_CONTRAT,
        CONTRAT.CACHET_PREVUT,
        CLIENT.NOM,
        CLIENT.TELEPHONE
FROM
        FACTURE, CONTRAT, CLIENT
WHERE
        CLIENT.CODE IN ('418', '518')
ORDER BY
        FACTURE.MONTANT_FACTURE DESC;
