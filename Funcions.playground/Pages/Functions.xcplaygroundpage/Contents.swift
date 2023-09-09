import Foundation

//func myAwesomePrintingFunction(name:String) {
//    print("Hello \(name)! Welcome to the class")
//}
//myAwesomePrintingFunction(name: "Eric")

//func add(lhs: Int, rhs: Int) {
//    print("\(lhs) + \(rhs) = \(lhs + rhs)")
//}
//
//add(lhs:2, rhs:2)

//func printWelcomeMesagge(name:String) {
//    printWelcomeMesagge("Hello, \(name)")
//}
//
//printWelcomeMesagge(name: "Eric")


//func printWelcomeMesagge(to name:String, course: "Diplomado iOS") {
//    print("Hello \(name), welcome to \(course)")
//}
//
//printWelcomeMesagge(to: "Eric", course: <#T##String#>: "Diplomado Android")
//printWelcomeMesagge(to: "Eric")

//var error = "The process failed: "
//
//func appendErrorCode(code: Int, toErrorString errorString: inout String) {
//    if code == 400 {
//        errorString += "bad request."
//    }
//}
//print(error)
//appendErrorCode(code: 400, toErrorString: &error)
//print(error)

//var error = "The process failed: "
//
//func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
//    if code == 400 {
//        errorString += "bad request."
//    }
//}
//print(error)
//appendErrorCode(400, toErrorString: &error)
//print(error)

//func welcomMessage(to name: String) -> String {
//    return "Welcome \(name)"
//}
//let message = welcomMessage(to: "Eric")
//print(message)

//func welcomMessage(to name: String) -> String { // without return only single line of code
//    "Welcome \(name)"
//}
//let message = welcomMessage(to: "Eric")
//print(message)

//func welcomMessage(to name: String) -> String { // without return only single line of code
//    course: String = "Diplomado"
//    return "Welcome \(name)"
//}
//let message = welcomMessage(to: "Eric")
//print(message)

func welcomMessage(to name: String) -> String { // without return only single line of code
    
    return print("before return")

}
let message = welcomMessage(to: "Eric")
print(message)
