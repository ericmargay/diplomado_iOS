//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let animal = "cat"

switch animal {
case "dog": print("🐕")
case "cat": print("😺")
case "mouse": print("🐁")
case "bird": print("🦜")
    default: break
}

switch animal {
case "dog", "cat":
    print("I like a lot of this")
case "mouse": print("🐁")
case "bird": print("🦜")
    default: break
}

let grade = 9
switch grade {
case ...5: print("Failed")
case 6...9: print("Meeh")
case 10: print("wow")
    default: break
}

let color = (255, 255, 255)

switch color {
case (_,_,255): print("max blue")
    fallthrough
case (_,2,_): print("max green")
    fallthrough
case (255,_,_): print("max red")
default: break
}

switch color {
    

case (let r, let g, 255):
    print("red: \(r),green: \(g), max blue") // value binding
case let (r, 255 , b ) :
    print("red: \(r)","max green", "max blue \(b)") // value binding
case let (255, g, b) where g < 255:
    print("green: \(g), max blue: \(b)")// value binding
default: break
}


// Experiment
//Basado en un plano cartesiano, implementar las siguientes reglas con swittch

//Indicar si la coordenada está en el cuadrante 1,2,3 o 4
//Indicar si la coordenada se encuentra en los ejes ( imprimir el valor en el eje)

//Indicar si la coordenada esta en el origen

let x = -2.6
let y = 3.6

switch (x, y) {
case let (x, y) where x > 0 && y > 0:
    print("La coordenada (\(x), \(y)) está en el cuadrante 1")
case let (x, y) where x < 0 && y > 0:
    print("La coordenada (\(x), \(y)) está en el cuadrante 2")
case let (x, y) where x < 0 && y < 0:
    print("La coordenada (\(x), \(y)) está en el cuadrante 3")
case let (x, y) where x > 0 && y < 0:
    print("La coordenada (\(x), \(y)) está en el cuadrante 4")
case (_, 0):
    print("La coordenada (\(x), \(y)) se encuentra en el eje X")
case (0, _):
    print("La coordenada (\(x), \(y)) se encuentra en el eje Y")
case (0, 0):
    print("La coordenada (\(x), \(y)) está en el origen")
default:
    print("La coordenada (\(x), \(y)) no cumple ninguna regla específica")
}


guard animal == "dog" else {
    fatalError("Its nor a dog")
}
