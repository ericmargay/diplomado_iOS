// Student Protocol Example
protocol Student: CustomStringConvertible { //CUstom extiende la descrpcio nque podria tener cada estudiante
    var accountNumber: Int { get }
    var name: String { get }
    
    var description: String {
        return name
    }

    
}

struct EngineeringStudent: Student {
    var accountNumber: Int
    var name: String

    let hasCalculator: Bool
    
    var description: String {
        return name
    }

}

struct MedicineStudent: Student {
    var accountNumber: Int
    var name: String

    let hasLabCoat: Bool
    
    var description: String {
        "Medicine student \(name)"
    }

}

struct printableStudent: Student, CustomStringConvertible {
    let student: Student
    
    
}

let engineeringStudent = EngineeringStudent(accountNumber: 313204186, name: "Alejandro", hasCalculator: false)
let medicineEstudent = MedicineStudent(accountNumber: 111123123123, name: "Mariana", hasLabCoat: true)


func printStudentsInformation(_ student: Student) {
    print("(student.name) - (student.accountNumber)")

    if let medicineStudent = student as? MedicineStudent {
        print(medicineStudent.hasLabCoat)
    }
}


printStudentsInformation(engineeringStudent)
printStudentsInformation(medicineEstudent)
