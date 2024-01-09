---
marp: true
---

<style>
:root {
  font-family: 'SF Pro Text', serif !important;
}

code {
   font-family:  "Fantasque Sans Mono", monospace !important;
}

h1 {
  font-size: 2.5em !important;
  color: #1E1E1E !important;
}

section{
  justify-content: flex-start;
}

img[alt~="right"] {
  display: block;
  margin: 0 0;
  float: right;
}

img[alt~="center"] {
  display: block;
  margin: 0 auto;
}
</style>

# Query annidate

---

## Query annidate

Una query annidata è una query che viene eseguita all'interno di un'altra query.

La `SELECT` annidata (quella interna) deve restituire un unico valore affinché questo possa essere valutato nell’espressione, oppure una lista di valori.

```sql
SELECT Sum(Reddito) FROM Persone
WHERE Eta > 30 AND
Reddito > ( SELECT Avg(Reddito) FROM Persone) ;
```

```sql
SELECT Sum(Reddito) FROM Persone
WHERE Eta > 30 AND
Reddito IN ( SELECT Reddito FROM Persone
             WHERE Eta > 30 AND Sesso = 'F' ) ;
```

---

## Query annidate

Una query `SELECT` può essere annidata in un’altra query `SELECT` all’interno della clausola `FROM`

La `SELECT` annidata (quella interna) puo’ restituire una tabella con più righe e colonne, eventualmente battezzata con un nome

```sql
SELECT *
FROM
    (SELECT Nonna.Madre AS Gen, Mamma.Figlio AS Fig
    FROM Maternita Nonna, Maternita Mamma WHERE
    Nonna.Figlio=Mamma.Madre) TabellaFem,

    (SELECT Nonno.Padre AS Gen, Babbo.Figlio AS Fig
    FROM Paternita Nonno, Paternita Papa WHERE
    Nonno.Figlio=Papa.Padre) TabellaMas
WHERE TabellaFem.Fig LIKE 'A%'
```

---

## Query annidate
Il risultato di una query può essere formato dall’UNIONE dei risultati di due o più query.

È necessario, però, che il risultato della query composita sia omogeneo, ovvero è necessario che tutte le query da unire restituiscano lo stesso tipo di risultato (cioe’ una tabella con stesso nome, stesso numero di attributi, attributi con lo stesso nome e dello stesso tipo)

---

```sql
SELECT Nonna.Madre AS Nonn, Mamma.Figlio AS Nipote
FROM Maternita Nonna, Maternita Mamma WHERE Nonna.Figlio=Mamma.Madre
UNION
SELECT Nonno.Padre AS Nonn, Papa.Figlio AS Nipote
FROM Paternita Nonno, Paternita Papa WHERE Nonno.Figlio=Papa.Padre
UNION
SELECT Nonno.Padre AS Nonn, Mamma.Figlio AS Nipote
FROM Paternita Nonno, Maternita Mamma WHERE Nonno.Figlio=Mamma.Madre
UNION
SELECT Nonna.Madre AS Nonn, Papa.Figlio AS Nipote
FROM Maternita Nonna, Paternita Papa WHERE Nonna.Figlio=Papa.Padre
```
L'operatore `UNION` è presente in quasi tutti i DBMS

---

