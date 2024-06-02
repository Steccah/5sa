**1. Cos'è la discretizzazione?**
- A) La rappresentazione di numeri continui con numeri finiti
- **B) I valori di una grandezza su un dominio continuo vengono rappresentati da elementi di un dominio discreto**
- C) Un metodo per calcolare la derivata di una funzione
- D) La risoluzione di equazioni differenziali

**2. Cos'è lo scarto assoluto?**
- **A) La differenza tra il valore stimato e il valore esatto**
- B) Il rapporto tra lo scarto relativo e il valore esatto
- C) Il valore medio dei dati
- D) La somma dei valori degli errori

**3. Cos'è lo scarto relativo?**
- A) La differenza tra il valore stimato e il valore esatto
- **B) Il rapporto tra lo scarto assoluto e il valore esatto**
- C) La misura della deviazione standard
- D) Il prodotto degli errori

**4. Cos'è la velocità di convergenza?**
- A) Il numero di iterazioni necessarie per risolvere un problema
- **B) La rapidità con cui una successione tende al suo limite**
- C) Il tempo impiegato da un algoritmo per terminare
- D) La precisione di un metodo numerico

**5. In cosa consiste il metodo babilonese?**
- **A) Un metodo iterativo per calcolare la radice quadrata**
- B) Una tecnica per risolvere sistemi lineari
- C) Un algoritmo per il calcolo dei logaritmi
- D) Un metodo per integrare funzioni complesse

**6. In cosa consiste il metodo analitico di Newton?**
- A) Un metodo per risolvere sistemi lineari utilizzando le matrici
- B) Un metodo per integrare numericamente una funzione
- **C) Un metodo per estrarre la radice quadrata di un numero utilizzando un'approssimazione iterativa**
- D) Un algoritmo per calcolare i massimi e minimi di una funzione

**7. In cosa consiste il metodo di Archimede?**
- A) Un metodo per calcolare l'area di figure geometriche
- B) Un algoritmo per la risoluzione di equazioni di secondo grado
- C) Una tecnica per il calcolo delle radici cubiche
- **D) Un metodo per approssimare il valore di pi greco**

**8. In quale modo differisce l'algoritmo di Krebs da quello di Archimede?**
- A) L'algoritmo di Archimede utilizza serie infinite mentre l'algoritmo di Krebs no
- **B) L'algoritmo di Archimede utilizza poligoni inscritti e circoscritti mentre l'algoritmo di Krebs utilizza un metodo iterativo con frazioni continue**
- C) L'algoritmo di Archimede è più preciso dell'algoritmo di Krebs
- D) L'algoritmo di Krebs converge più lentamente dell'algoritmo di Archimede

**9. Cos'è il calcolo degli zeri di una funzione?**
- **A) La ricerca dei punti in cui la funzione assume valore zero**
- B) La determinazione dei massimi e minimi di una funzione
- C) La derivazione della funzione in vari punti
- D) L'integrazione della funzione in un intervallo

**10. Cos'è il metodo di bisezione?**
- **A) Un metodo per trovare le radici di una funzione**
- B) Una tecnica per calcolare il valore medio di una funzione
- C) Un metodo per l'integrazione numerica
- D) Una tecnica per risolvere sistemi non lineari

**11. Qual è la differenza principale nella velocità di convergenza tra il metodo delle tangenti e il metodo di bisezione?**
- A) Il metodo di bisezione converge più velocemente del metodo delle tangenti
- B) Entrambi i metodi convergono alla stessa velocità
- **C) Il metodo delle tangenti converge più velocemente del metodo di bisezione**
- D) La velocità di convergenza dipende dalla funzione considerata

**12. Cosa si intende per errore di arrotondamento?**
- **A) L'errore causato dalla rappresentazione finita dei numeri**
- B) La differenza tra valore misurato e valore vero
- C) Un errore introdotto dalla discretizzazione
- D) L'errore accumulato nelle operazioni iterativi

**13. Scrivi a parole come funziona il metodo di bisezione, poi scrivi dello pseudocodice.**

**Metodo di bisezione (spiegazione):**
Il metodo di bisezione è un algoritmo per trovare una radice di una funzione continua. Si basa sul teorema degli zeri, che afferma che se una funzione \( f(x) \) è continua su un intervallo \([a, b]\) e \( f(a) \) e \( f(b) \) hanno segni opposti, allora esiste almeno un punto \( c \) in \([a, b]\) tale che \( f(c) = 0 \). Il metodo consiste nel dividere ripetutamente l'intervallo a metà e scegliere il sottointervallo in cui il segno della funzione cambia, riducendo così l'intervallo di ricerca fino a raggiungere una tolleranza desiderata.

**Pseudocodice del metodo di bisezione:**

```r
function bisection(f, a, b, tol)
    if f(a) * f(b) >= 0
        return "Errore: f(a) e f(b) devono avere segni opposti"
    while (b - a) / 2 > tol
        c = (a + b) / 2
        if f(c) == 0
            return c
        if f(c) * f(a) < 0
            b = c
        else
            a = c
    return (a + b) / 2
```