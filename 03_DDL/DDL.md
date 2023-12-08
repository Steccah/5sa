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

# DDL

---

## Cos'è DDL?

Il DDL (Data Definition Language) è un linguaggio di definizione dei dati, ovvero un linguaggio che permette di definire la struttura di un database.

---

## Creare un database

Il comando SQL per creare un database è `CREATE DATABASE`, che utilizza la seguente sintassi:

```sql
CREATE DATABASE nome_del_database;
```

Ad esempio per creare un database chiamato AgenziaViaggi si utilizzerà il comando `CREATE DATABASE AgenziaViaggi`

---

## Creare una tabella

Il comando SQL per creare una tabella è `CREATE TABLE`, che utilizza la seguente sintassi:

```sql
CREATE TABLE nome_della_tabella (
  campo1 tipo_dato,
  campo2 tipo_dato,
  campo3 tipo_dato,
  campo4 tipo_dato,
  ...
);
```

Al momento della creazione di una tabella si devono anche definire quali campi sono chiavi primarie o esterne (nel caso in cui la tabella che vogliamo creare ne contenga), ed eventualmente specificare che un determinato campo debba necessariamente essere riempito.

---

## Creare una tabella

Per definire la chiave primaria si deve inserire `PRIMARY KEY` dopo il nome del campo, mentre per definire una chiave esterna si deve inserire
```sql
FOREIGN KEY (nome_campo) REFERENCES nome_tabella(nome_campo)
```

Ad esempio se si vuole creare la **tabella Compiti**, che contenga la **chiave primaria IDCompito**, la **chiave esterna IDStudente** riferita alla **chiave primaria Matricola** della **tabella Studenti**, e la **chiave esterna IDMateria** riferita all'omonima chiave della tabella **Materie**, il codice potrebbe essere il seguente:

---

## Creare una tabella

```sql
CREATE TABLE Compiti (
  IDCompito int PRIMARY KEY,
  IDStudente int,
  IDMateria int,
  Data date,
  Voto int,
  FOREIGN KEY (IDStudente) REFERENCES Studenti(Matricola),
  FOREIGN KEY (IDMateria) REFERENCES Materie(IDMateria)
);
```

---

## Creare una tabella
Per specificare che un campo non possa essere nullo si utilizza l'attributo `NOT NULL`.
Per specificare che una colonna debba contenere valori tutti diversi, si deve far seguire, allo stesso modo, la sua definizione dall'attributo `UNIQUE`.
In riferimento all'esempio precedente noi potremmo volere che né le chiavi primaria o esterne, né il campo voto possano essere nulli e che il campo IDCompito non possa assumere valori uguali in record diversi:

---

## Creare una tabella

```sql
CREATE TABLE Compiti (
  IDCompito int PRIMARY KEY NOT NULL UNIQUE,
  IDStudente int NOT NULL,
  IDMateria int NOT NULL,
  Data date,
  Voto int NOT NULL,
  FOREIGN KEY (IDStudente) REFERENCES Studenti(Matricola),
  FOREIGN KEY (IDMateria) REFERENCES Materie(IDMateria)
);
```