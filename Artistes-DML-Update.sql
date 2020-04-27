/***********************************************************
        Script D1 
***********************************************************/	
UPDATE
        GROUPE
SET
        CACHET_HABITUEL = CACHET_HABITUEL + (CACHET_HABITUEL * 0.035);
        
/***********************************************************
        Script D2
***********************************************************/
UPDATE
        CONTRAT
SET
        CACHET_PREVUT = CACHET_PREVUT - (CACHET_PREVUT * 0.1)
WHERE
        (HEURE_DEBUT_PRESTATION BETWEEN 18 AND 19)
        AND
        HEURE_FIN_PRESTATION >= 22;
