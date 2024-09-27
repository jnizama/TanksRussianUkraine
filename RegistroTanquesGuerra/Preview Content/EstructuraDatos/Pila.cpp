//
//  Pila.cpp
//  RegistroTanquesGuerra
//
//  Created by Jorge Nizama on 26/09/24.
//

#include "Pila.hpp"

Pila::Pila() {
        cima = nullptr;
    }

    // Función para agregar un tanque a la pila (push)
    void Pila::push(string nombreTanque) {
        Nodo* nuevoNodo = new Nodo();  // Crear un nuevo nodo
        nuevoNodo->tanque = nombreTanque;  // Asignar el nombre del tanque
        nuevoNodo->siguiente = cima;  // El siguiente nodo es la cima actual
        cima = nuevoNodo;  // Actualizar la cima de la pila
    }

    // Función para eliminar un tanque de la pila (pop)
    void Pila::pop() {
        if (cima != nullptr) {  // Verificar si la pila no está vacía
            Nodo* nodoEliminado = cima;  // Guardar el nodo a eliminar
            cima = cima->siguiente;  // Actualizar la cima al siguiente nodo
            delete nodoEliminado;  // Liberar memoria del nodo eliminado
        } else {
            cout << "La pila está vacía. No hay tanques destruidos para mostrar.\n";
        }
    }

    // Función para ver el tanque en la cima de la pila (top)
    string Pila::top() {
        if (cima != nullptr) {
            return cima->tanque;
        } else {
            return "No hay tanques destruidos.";
        }
    }

    // Función para verificar si la pila está vacía
    bool Pila::vacia() {
        return cima == nullptr;
    }

    // Función para mostrar y vaciar la pila
    void Pila::mostrarYVaciar() {
        if (cima == nullptr) {
            cout << "No hay tanques destruidos registrados.\n";
        } else {
            cout << "Tanques destruidos:\n";
            while (cima != nullptr) {
                cout << top() << endl;
                pop();  // Retirar el tanque de la pila
            }
        }
    }
