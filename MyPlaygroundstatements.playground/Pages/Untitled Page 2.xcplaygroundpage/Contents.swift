//: [Previous](@previous)

import Foundation

//enumerates

enum Pet: String {
    case dog = "🐕"
    case cat = "😺"
    case turtle = "🐢"
    case parakket = "🦆"
}

let myPet = Pet(rawValue: "🐢")
let myTurtle: Pet = .turtle
let myParakeet = Pet.parakket

switch myPet {
case .dog:
    print("🐢")
default: print(myPet?.rawValue ?? Pet.turtle.rawValue
)
}


//: [Next](@next)
