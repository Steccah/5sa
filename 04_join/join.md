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

# Tipi di join

---

## Join

Esistono più tipi di join:

- **Inner join**: restituisce le righe che hanno un match in entrambe le tabelle
- **Left join**: restituisce tutte le righe della tabella di sinistra e quelle che hanno un match nella tabella di destra
- **Right join**: restituisce tutte le righe della tabella di destra e quelle che hanno un match nella tabella di sinistra
- **Outer join**: restituisce tutte le righe di entrambe le tabelle

---
## Inner join

L'inner join restituisce le righe che hanno un match in entrambe le tabelle, è il tipo di join più comune e quello che viene eseguito di default.

![bg right:40% 80%](img_inner_join.png)

---

## Left join

Il left join restituisce tutte le righe della tabella di sinistra e quelle che hanno un match nella tabella di destra.

![bg right:40% 80%](img_left_join.png)

---

## Right join

Il right join restituisce tutte le righe della tabella di destra e quelle che hanno un match nella tabella di sinistra.

![bg right:40% 80%](img_right_join.png)

---

## Outer join

L'outer join restituisce tutte le righe di entrambe le tabelle.

![bg right:40% 80%](img_full_outer_join.png)

---

## Approfondimento

https://www.w3schools.com/sql/sql_join.asp