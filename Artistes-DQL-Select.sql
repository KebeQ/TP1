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
        DATE_CONTRAT BETWEEN TO_DATE('2019-01-01', 'yyyy-mm-dd') AND TO_DATE('2019-12-31', 'yyyy-mm-dd')
        AND 
        DATE_PRESTATION BETWEEN TO_DATE('2020-01-01', 'yyyy-mm-dd') AND TO_DATE('2020-12-31', 'yyyy-mm-dd')        
ORDER BY 
        DATE_CONTRAT DESC;

/***********************************************************
        Script C3
***********************************************************/
SELECT      
        CLIENT.NOM,
        CLIENT.TELEPHONE,  
        CONTRAT.CODE_CLIENT,
        CONTRAT.NO_CONTRAT,
        CONTRAT.DATE_CONTRAT,
        CONTRAT.CACHET_PREVUT
FROM
        CLIENT, CONTRAT
WHERE 
        CONTRAT.CODE_CLIENT = CLIENT.CODE          
ORDER BY 
        CLIENT.NOM;

/***********************************************************
        Script C4
***********************************************************/
SELECT        
        ARTISTE.NOM,
        ARTISTE.PRENOM,
        ARTISTE.TELEPHONE,
        MEMBRE.ROLE,
        MEMBRE.NOM_GROUPE
FROM
        ARTISTE, MEMBRE
WHERE
        MEMBRE.NO_ARTISTE = ARTISTE.NO_ARTISTE
        AND 
        MEMBRE.ROLE IS NOT NULL
ORDER BY 
        MEMBRE.NOM_GROUPE;

/***********************************************************
        Script C5
***********************************************************/
SELECT
        CLIENT.NOM,
        CONTRAT.NO_CONTRAT,
        CONTRAT.DATE_CONTRAT,
        CONTRAT.DATE_PRESTATION,
        CONTRAT.HEURE_DEBUT_PRESTATION,
        CONTRAT.HEURE_FIN_PRESTATION	
FROM
        CLIENT, CONTRAT
WHERE
        CONTRAT.DATE_CONTRAT BETWEEN TO_DATE('2019-09-01', 'yyyy-mm-dd') AND TO_DATE('2019-10-31', 'yyyy-mm-dd')
        AND
        CONTRAT.CODE_CLIENT = CLIENT.CODE
ORDER  BY
        CLIENT.NOM;

/***********************************************************
        Script C6
***********************************************************/
SELECT 
        CONTRAT.NO_CONTRAT,
        CONTRAT.DATE_CONTRAT,
        CONTRAT.NOM_GROUPE,
        CONTRAT.CACHET_PREVUT,	
        GROUPE.CACHET_HABITUEL
FROM
        CONTRAT, GROUPE
WHERE 
        (GROUPE.CACHET_HABITUEL - CONTRAT.CACHET_PREVUT) >= 500
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
        (CLIENT.TELEPHONE LIKE '418%' OR CLIENT.CODE LIKE '518%') 
        AND
        (FACTURE.NO_CONTRAT = CONTRAT.NO_CONTRAT) AND (CONTRAT.CODE_CLIENT = CLIENT.CODE)       
ORDER BY
        FACTURE.MONTANT_FACTURE DESC;
