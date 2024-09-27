//
//  Pilas.swift
//  RegistroTanquesGuerra
//
//  Created by Jorge Nizama on 27/09/24.
//

import Foundation

// Definimos un nodo que representará cada tanque
class Nodo {
    var tanque: String
    var siguiente: Nodo?
    
    init(tanque: String) {
        self.tanque = tanque
        self.siguiente = nil
    }
}

// Clase para manejar la pila (estructura LIFO)
class Pila {
    private var cima: Nodo?
    
    // Función para agregar un tanque a la pila (push)
    func push(tanque: String) {
        let nuevoNodo = Nodo(tanque: tanque) // Crear un nuevo nodo
        nuevoNodo.siguiente = cima           // El siguiente nodo es la cima actual
        cima = nuevoNodo                     // Actualizar la cima de la pila
    }
    
    // Función para eliminar un tanque de la pila (pop)
    func pop() {
        if cima != nil {
            cima = cima?.siguiente           // Actualizar la cima al siguiente nodo
        } else {
            print("La pila está vacía. No hay tanques destruidos para mostrar.")
        }
    }
    
    // Función para ver el tanque en la cima de la pila (top)
    func top() -> String {
        if let tanque = cima?.tanque {
            return tanque
        } else {
            return "No hay tanques destruidos."
        }
    }
    
    // Función para verificar si la pila está vacía
    func vacia() -> Bool {
        return cima == nil
    }
    
    // Función para mostrar y vaciar la pila
    func mostrarYVaciar() {
        if cima == nil {
            print("No hay tanques destruidos registrados.")
        } else {
            print("Tanques destruidos:")
            while cima != nil {
                print(top())
                pop() // Retirar el tanque de la pila
            }
        }
    }
    func obtenerTanques() -> [String] {
            var tanques: [String] = []
            var actual = cima
            
            while actual != nil {
                tanques.append(actual!.tanque)
                actual = actual?.siguiente
            }
            
            return tanques.reversed() // Devolverlos en orden correcto
        }
}

// Función principal para manejar el menú
/*
func main() {
    let tanquesRusos = Pila()
    let tanquesUcranianos = Pila()
    var opcion = 0
    
    repeat {
        print("\n============================")
        print("Contador de Tanques Destruidos")
        print("1. Registrar tanque ruso destruido")
        print("2. Registrar tanque ucraniano destruido")
        print("3. Mostrar tanques rusos destruidos")
        print("4. Mostrar tanques ucranianos destruidos")
        print("5. Salir")
        print("============================")
        print("Selecciona una opcion: ", terminator: "")
        
        if let input = readLine(), let num = Int(input) {
            opcion = num
        }
        
        switch opcion {
        case 1:
            print("Ingresa la cantidad de tanques rusos destruidos: ", terminator: "")
            if let input = readLine(), let cantidad = Int(input) {
                for i in 1...cantidad {
                    tanquesRusos.push(tanque: "Tanque ruso #\(i)")
                }
                print("Se han registrado \(cantidad) tanques rusos destruidos.")
            }
            
        case 2:
            print("Ingresa la cantidad de tanques ucranianos destruidos: ", terminator: "")
            if let input = readLine(), let cantidad = Int(input) {
                for i in 1...cantidad {
                    tanquesUcranianos.push(tanque: "Tanque ucraniano #\(i)")
                }
                print("Se han registrado \(cantidad) tanques ucranianos destruidos.")
            }
            
        case 3:
            tanquesRusos.mostrarYVaciar()
            
        case 4:
            tanquesUcranianos.mostrarYVaciar()
            
        case 5:
            print("Saliendo del programa...")
            
        default:
            print("Opción no válida. Inténtalo de nuevo.")
        }
        
    } while opcion != 5
}

// Llamar a la función principal para ejecutar el programa
main()
*/
