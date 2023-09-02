import Foundation

struct Dog { // no heredan // los tipos como int o string son estrcucturas aqui tenemos un tipo Perro
    var isAdopted: Bool
    let color: String
    //OBservadores de propiedades
    var name: String {
        willSet(newName) {
            print("My new name is \(newName)")
        }
        didSet {
            print("My old name is \(oldValue)")
        }
    }
    static let amountOfPaws = 4
    var paws: Int = 4
    var specialNeeds: Bool {
        paws != Self.amountOfPaws
    }
    func getID() -> String {
        return name + "\n" + "color: \(color)" + "\n" + "paws: \(paws)"
    }
    mutating func changeName(newName: String) { // tiene que ser mutating para que pueda convertirse en un setter
        name = newName
    }
    
    static func describeADog() -> String { // tiene que ser mutating para que pueda convertirse en un setter
        "Dogs are really cute animals"
    }
    
    init(name: String, color: String) {
        self.name = name
        self.isAdopted = isAdopted
        self.color = color
    }
    init(adopted: String, color: String) {
        self.color = color
    }
    init(bought: String, color: String) {
        self.init(name: <#T##String#>, color: <#T##String#>)
    }
}


var myDog = Dog(name: "Milaneso", isAdopted: true, color: "Brown")
myDog.isAdopted = false
myDog.name = "Dante"
myDog.paws = 3
myDog.specialNeeds
myDog.getID()
Dog.amountOfPaws
myDog.changeName(newName: "SOlovino")
Dog.describeADog()
var yourDog = Dog(name: <#T##String#>, isAdopted: <#T##Bool#>, color: <#T##String#>)
