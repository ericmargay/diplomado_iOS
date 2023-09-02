//: [Previous](@previous)

import Foundation

//enumerates

enum Pet: String {
    case dog = "🐕"
    case cat = "😺"
    case mouse = "🐁"
    case turtle = "🐢"
    case parakket = "🦆"
    
    var type: String { // computadas hremos un calculo
        switch self {
        case .dog, .cat, .mouse: return "mamifero"
        case .turtle: return "reptile"
        case .parakket:
            return "ave"
        }
    }

    init?(name: String) {
        switch name {
        case "dog": self.init(rawValue: "🐕")
        case "cat": self.init(rawValue: "😺")
        case "mouse": self.init(rawValue: "🐁")
        case "turtle": self.init(rawValue: "🐢")
        case "parakket": self.init(rawValue: "🦆")
        default: return nil
        }
    }
}

let myPet = Pet.dog.type
let myBird = Pet.parakket.type
let myRept = Pet.turtle.type

let myTurtle = Pet(rawValue: "turtle")


