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
        NOM_SCENE IS NOT NULL;        
ORDER BY
        PRENOM ASC;
        
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
        CLIENT.NOM ASC;

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
        GROUPE.NOM ASC;
        
        
       
        
        
        
        
        
  
   
