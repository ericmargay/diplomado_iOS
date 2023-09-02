//: [Previous](@previous)

import Foundation

class Vehicle {
    
    var brand: String = ""
    var model: String = ""
    var owner: String?
    var serialNumber: String = ""
    var wheels: Int?
//    var name: String
    
    var type: String {
        return(wheels ?? 0) > 0 ? "land" : "other" // nil coalesing 0 por default si existe entonces wheels
    }
    

    
    var registration: (name: String, serialNumber: String, type: String)? {
        get {
            if let owner = owner {
                return(owner, serialNumber, type)
            }
            return nil
        }
        set(newRegistration) {
            if let newRegistration = newRegistration {
                owner = newRegistration.name
            }
        }
    
    }
    init(brand: String, model: String, serialNumber: String, wheels: Int?) {
        
        self.brand = brand
        self.model = model
        self.serialNumber = serialNumber
        self.wheels = wheels
    }
    private var isMoving: Bool = false
    func move() {
        isMoving = true
    }
    func stop() {
        isMoving = false
    }
    static func describe() {
        //metodo de clase
        print("A Vehicle!")
    }
    func makeNoise() -> String { "Noise" }
}

let myVehicle = Vehicle(brand: "Ford", model: "Electric", serialNumber: "34343", wheels: nil)
//myVehicle.registration = (name: "Eric", model: "Electric", serialNumber: "390432049", type: "other" )
myVehicle.move()
//myVehicle.isMoving
Vehicle.describe()




class Car: Vehicle {
    override var type: String {
        return "Car"
    }
    
    override var brand: String {
        willSet(newBrand) {
            print("My new brand is \(newBrand)")
        }
        didSet {
            print("My old brand is \(oldValue)")
        }
    }
    
    var isElectric: Bool
    
    init(electric: Bool) {
        self.isElectric = electric
        super.init(brand: "Ford", model: "Raptor", serialNumber: "304'0", wheels: 4)
    }
    override func makeNoise() -> String {
        "BRRRUM"
    }
    override init(brand: String, model: String, serialNumber: String, wheels: Int?) {
        isElectric = brand == "Ford"
        super.init(brand: brand, model: model, serialNumber: serialNumber, wheels: wheels)
    }
    
    init(brand: String, model: String, serialNumber: String, isElectric: Bool) {
        self.isElectric = isElectric
        super.init(brand: brand, model: model, serialNumber: serialNumber, wheels: 4)
    }
    
    convenience init(suzukiModel model: String, serialNumber: String, isElectric: Bool, boughtBy name: String) {
        self.init(brand: "SUzuki", model: model, serialNumber: serialNumber, isElectric: isElectric)
        owner = name
        
    }
}
let myCar = Car(electric: true)
myCar.makeNoise()

    myCar.brand = "Tesla"

//cuando se haga el set, se ponga la nueba marca, en la clase de carro
