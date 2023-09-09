import Foundation

//func grabMiddleName(fullName name: (first: String, middle: String?, last: String)) -> {
//    last: String)) -> String? {
//        return name.middle
//}
//}
//let middleName = grabMiddleName(fullName : (first: "Eric", middle: "Perez"?, last: "Margay"))
//
//if let middleName = middleName {
//    print(middleName)
//}

//func greetByMiddleName(fromfullName name: (first: String, middle: String?, last: String), age: Int) {
//
//    guard let middleName = name.middle, age > 18 else {
//        print("Hey there!")
//        return
//
//    }
//
//    print("Hey, \(name.middle)")
//    }
//}
//
//greetByMiddleName(fromfullName: (first: "Eric", middle: nil, last: "Margay"))
//greetByMiddleName(fromfullName: (first: "Eric", middle: "Perez", last: "Margay"))
//greetByMiddleName(fromfullName: (first: "Eric", middle: "Perez", last: "Margay"), age:17 )


func sortedEvenOddNumbers(_ numbers: [Int]) -> (even: [Int], odd: [Int]) {
    return (even: [], odd: [])
}
let myFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers

myFunction
