//
//  Pila.hpp
//  RegistroTanquesGuerra
//
//  Created by Jorge Nizama on 26/09/24.
//

#ifndef Pila_hpp
#define Pila_hpp

#include <stdio.h>
#include <iostream>
#include <string>

using namespace std;

// Definimos un nodo que representará cada tanque
struct Nodo {
    string tanque;
    Nodo* siguiente;
};

class Pila {
private:
    Nodo* cima;  // Puntero a la cima de la pila
    
public:
    // Constructor: inicializa la pila vacía
    Pila();
    
    void push(string nombreTanque);
    
    void pop();
    
    // Función para ver el tanque en la cima de la pila (top)
    string top();
    
    bool vacia();
    
    // Función para mostrar y vaciar la pila
    void mostrarYVaciar();
};
#endif /* Pila_hpp */
