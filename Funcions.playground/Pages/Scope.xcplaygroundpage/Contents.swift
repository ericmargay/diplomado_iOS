import Foundation

//func areaOfTriangleWith(base: Double, height: Double) -> Double {
//    let rectangle = base * height
//
//    func divide() -> Double {
//        return rectangle / 2
//    }
//    return divide()
//}
//
//areaOfTriangleWith(base: 4, height: 5)

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds: [Int] = []
//    var odds: Array<Int> = []

    
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens:evens, odds: odds)
}

let aBunchofNumbers = [ 10, 1, 4, 3, 57, 43, 27, 84]

let sortedEvensandOddNumbers = sortedEvenOddNumbers(aBunchofNumbers)
print("The even numbers: \(sortedEvensandOddNumbers.evens)")
print("The odds numbers: \(sortedEvensandOddNumbers.odds)")
