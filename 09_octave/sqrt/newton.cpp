#include <math.h>
#include <iostream>
#include <stdlib.h>
#include <iomanip>
using namespace std;
#define MAX 1000    // numero massimo di iterazioni
#define EPS 0.00001 // precisione desiderata

double radiceNewton(double num, int itera)
{
    int volte = 0;
    float ynew, yold;
    yold = 0.002; // primo termine
    cout << "-iterazione " << 0 << " : " << yold << endl;
    for (volte = 1; volte <= itera; volte++)
    {
        ynew = 0.5 * yold * (3 - num * yold * yold);
        cout << "-iterazione " << volte << " : " << 1 / ynew << endl;
        yold = ynew;
    }
    return 1 / yold;
}

int main()
{
    double numero, radice, num;
    cout << setprecision(11);
    cout << "Metodo di Newton \n";
    cout << "Inserisci un valore reale positivo  : ";
    cin >> numero;
    cout << "Inserisci il numero iterazioni (>15): ";
    cin >> num;
    radice = radiceNewton(numero, num);
    cout << "Valore finale : " << radice << endl;
    cout << "Valore preciso: " << sqrt(numero) << endl;
}
