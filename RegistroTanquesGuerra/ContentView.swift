import SwiftUI

struct ContentView: View {
    @State private var totRusos: String = "0"
    @State private var totUcranianos: String = "0"
    
    @State private var pilaRusos = Pila() // Pila para tanques rusos
    @State private var pilaUcranianos = Pila() // Pila para tanques ucranianos

    var body: some View {
        NavigationView {
            Form {
                // Registro de tanques rusos
                Section(header: Text("Registrar Tanques Rusos")) {
                    TextField("Cantidad de tanques rusos destruidos", text: $totRusos)
                        .keyboardType(.numberPad)
                    
                    Button("Registrar") {
                        if let cantidad = Int(totRusos) {
                            for i in 1...cantidad {
                                pilaRusos.push(tanque: "Tanque ruso #\(i)")
                            }
                            totRusos = "0" // Reiniciar el campo de entrada
                        }
                    }
                }
                
                // Registro de tanques ucranianos
                Section(header: Text("Registrar Tanques Ucranianos")) {
                    TextField("Cantidad de tanques ucranianos destruidos", text: $totUcranianos)
                        .keyboardType(.numberPad)
                    
                    Button("Registrar") {
                        if let cantidad = Int(totUcranianos) {
                            for i in 1...cantidad {
                                pilaUcranianos.push(tanque: "Tanque ucraniano #\(i)")
                            }
                            totUcranianos = "0" // Reiniciar el campo de entrada
                        }
                    }
                }
                
                // Navegación a la vista de tanques destruidos
                Section {
                    NavigationLink(destination: TanquesView(pilaRusos: pilaRusos, pilaUcranianos: pilaUcranianos)) {
                        Text("Ver Tanques Destruidos")
                    }
                }
                Button("Limpiar Pila"){
                    pilaRusos.mostrarYVaciar()
                    pilaUcranianos.mostrarYVaciar()
                }
            }
            .navigationTitle("Registro de Tanques")
        }
    }
}

#Preview {
    ContentView()
}
