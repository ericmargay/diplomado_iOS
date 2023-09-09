import UIKit

// Crear una variable llamada weather que puede tener 2 posibles valores lluvia y nieve. De igual modo 😀, crear una variable, "time", con la hora del dia (0-23).

// Si es nieve imprimir en pantalla "nubecopos", si es lluvia imprimir "nubegotas".
//De 7-18 imprimir "Usa bloqueador" y de 19-6 imprimir "No necesitas bloqueador"

// Para casos no contemplados no hacer algo.
var weather = "lluvia"
var time = 12

var dark = Array(0...6) + Array(19...23)
var light = 7...18


weather == "lluvia" ? print("❄️") : print("🌨️")

light ~= time ? print("Usa bloqueador") : print("No necesitas bloqueador")

