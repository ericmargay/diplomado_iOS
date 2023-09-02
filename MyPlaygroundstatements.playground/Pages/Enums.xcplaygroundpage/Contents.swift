//: [Previous](@previous)

import Foundation

enum ContactMethod {
    case email (String)
    case phone (Int)
    case mail  (streetName: String, zipCode: String, streetNumber: Int)
    
}
//: [Next](@next)

var MyPreferedContactMethod = ContactMethod.email("myemail@email.me")

switch MyPreferedContactMethod {
case .email (let strEmail) : print(strEmail)
case .phone (let num) : print(num)
case .mail (streetName : let name,
            zipCode : let zc,
            streetNumber : let num ) : print(name)
}

enum ArithmethicExpression {
    case number(Int)
    indirect case addition(ArithmethicExpression, ArithmethicExpression)
    indirect case multiplication(ArithmethicExpression, ArithmethicExpression)
    indirect case sustraction(ArithmethicExpression, ArithmethicExpression)
    indirect case division(ArithmethicExpression, ArithmethicExpression)
}

func evaluate(expression: ArithmethicExpression) -> Int {
    switch expression {
    
        case .number (let number) :
            return number
        
        case .addition (let leftExpression, let rightxpression) :
            return evaluate(expression:leftExpression) + evaluate(expression:rightxpression)

        case .multiplication (let leftExpression, let rightxpression) :
            return evaluate(expression:leftExpression) * evaluate(expression:rightxpression)
        
        case .sustraction (let leftExpression, let rightxpression) :
            return evaluate(expression:leftExpression) - evaluate(expression:rightxpression)
   
        case .division (let leftExpression, let rightxpression) :
        return evaluate(expression:leftExpression) / evaluate(expression:rightxpression)
    }
}

// ((5+4)*2)
let five = ArithmethicExpression.number(5)
let four = ArithmethicExpression.number(4)
let sum = ArithmethicExpression.addition(five, four)
let product = ArithmethicExpression.multiplication(sum, ArithmethicExpression.number(2))
evaluate(expression: product)

// (6+(4*(8-1)))/2
let eight = ArithmethicExpression.number(8)
let one = ArithmethicExpression.number(1)
let res = ArithmethicExpression.sustraction(eight, one)
let product2 = ArithmethicExpression.multiplication(ArithmethicExpression.number(4), res)
let sum2 = ArithmethicExpression.addition(ArithmethicExpression.number(6), product2)
let divis = ArithmethicExpression.division(sum2, ArithmethicExpression.number(2))
evaluate(expression: divis)


struct Car {
    var wheels: Int
    var color: String
}

let myCar = Car(wheels: 4, color: "Black")

struct Dog {
    var name: String
    var isAdopted: Bool
}

// let dante = Dog(name: "Dante", isAdopted: true) // Si es let y se quiere cambiar no se podra
var dante = Dog(name: "Dante", isAdopted: true)

dante.name = "Alfredo"

class CarClass {
    var wheels: Int
    var color: String
    
    init(wheels: Int, color: String) {
        self.wheels = wheels
        self.color = color
    }
}

let myCars = CarClass(wheels: 4, color: "Black")
myCars.color = "Yellow"

let copyOfMyCar = myCars
copyOfMyCar.color = "Red"

myCars.color

var dantes = Dog(name: "Dante", isAdopted: true)
dantes.name = "Juan"

var danteClone = dantes
danteClone.isAdopted = false
print(dantes.isAdopted)
print(danteClone.isAdopted)



class Vehicle {
    var wheels: Int?
    
    init(wheels: Int) {
        self.wheels = wheels
    }
}

class Scooter: Vehicle {
    var color: String
    init(color: String = "Blue") {
        self.color = color
    }
}

let myVehicle = Scooter(wheels: 2)
