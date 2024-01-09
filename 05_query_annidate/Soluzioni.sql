--1
-- brutta:

SELECT DISTINCT Nome 
FROM Ordini O JOIN Utenti U ON O.IDUtente=U.IDUtente
WHERE DataOrdine >= '2024-01-02'

-- bella:
SELECT Nome, Cognome
FROM Utenti
WHERE IDUtente IN (
    SELECT IDUtente
    FROM Ordini
    WHERE DataOrdine > '2024-01-02'
);

--2
-- brutta:
SELECT U.IDUtente, U.Nome, U.Cognome, COUNT(O.IDOrdine) AS NumeroOrdini
FROM Utenti U JOIN Ordini O
ON U.IDUtente = O.IDUtente
GROUP BY U.IDUtente

-- bella:
SELECT Nome, Cognome, (
    SELECT COUNT(*)
    FROM Ordini
    WHERE IDUtente = U.IDUtente
) AS NumeroOrdini
FROM Utenti U;

--3
SELECT *
FROM Ordini
WHERE TotaleOrdine > (
    SELECT AVG(TotaleOrdine)
    FROM Ordini
);

--4
SELECT U.IDUtente, U.Nome, U.Cognome
FROM Utenti U
JOIN (
    SELECT IDUtente, AVG(TotaleOrdine) AS MediaPerOrdine
    FROM Ordini
    GROUP BY IDUtente
) AS MediaPerUtente ON U.IDUtente = MediaPerUtente.IDUtente
WHERE MediaPerUtente.MediaPerOrdine > (
    SELECT AVG(MediaPerOrdine)
    FROM (
        SELECT AVG(TotaleOrdine) AS MediaPerOrdine
        FROM Ordini
        GROUP BY IDUtente
    ) AS MediePerUtente
);