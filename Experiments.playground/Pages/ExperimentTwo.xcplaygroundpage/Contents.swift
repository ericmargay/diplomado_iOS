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
