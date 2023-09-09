import Foundation

protocol Student {
    var accountNumber: Int { get } // todo estudiante tiene que tener numero de cuenta
    var name: String { get }
}


struct EngineeringStudent: Student { // le faltan las cosas del protocolo
    var accountNumber: Int // todo estudiante tiene que tener numero de cuenta
    var name: String
    
    let hasCalculator: Bool
}


struct MedicineStudent: Student {
    var accountNumber: Int
    var name: String
    
    let hasLabCoat: Bool
}

func prin


let enginneringStdent = EngineeringStudent(accountNumber: 20945804958, name: "Eric")
