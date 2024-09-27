import SwiftUI

struct TanquesView: View {
    var pilaRusos: Pila
    var pilaUcranianos: Pila
    
    var body: some View {
        Form {
            // Mostrar tanques rusos destruidos
            Section(header: Text("Tanques Rusos Destruidos")) {
                List(pilaRusos.obtenerTanques(), id: \.self) { tanque in
                    Text(tanque)
                }
            }
            
            // Mostrar tanques ucranianos destruidos
            Section(header: Text("Tanques Ucranianos Destruidos")) {
                List(pilaUcranianos.obtenerTanques(), id: \.self) { tanque in
                    Text(tanque)
                }
            }
        }
        .navigationTitle("Tanques Destruidos")
    }
}

#Preview {
    TanquesView(pilaRusos: Pila(), pilaUcranianos: Pila())
}
