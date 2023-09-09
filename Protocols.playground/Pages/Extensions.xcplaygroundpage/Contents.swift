//: [Previous](@previous)

import Foundation

//extension Double {
//    var squared
//}

struct Car {
    let maker: String
    let model: String
    let year: Int
    
    var fuelLevel: Double { //computed property
        willset {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1")
        } //para que no se llene el tanque
    }
}

extension Car: CustomStringConvertible {
    var description: String {
        "\(maker) - \(model)"
    }
    init(maker: String, model: String) {
        self.init
    }
}

let firstCar = Car(maker: "Honda", model: "Civic", year: 2018, fuelLevel: 1.0)
// puedo crear iun incializador sin perder el acceso al inicializador original
print(firstCar)
// tipos anidados ventajas de las extensiones y aumentar propiedades computadas
//Control del tipo
