import UIKit


var weather = "lluvia"
var time = 12

var dark = Array(0...6) + Array(19...23)
var light = 7...18


if weather == "lluvia" {
    print("❄️")
}
else if {
    print("🌨️")
}

light ~= time ? print("Usa bloqueador") : print("No necesitas bloqueador")

