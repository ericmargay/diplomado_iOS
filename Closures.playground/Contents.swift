import Foundation

//func doAwesomeWork (on input: String, using transformer: () -> Void, then completion: () -> Void) {
//    //Here would go the logic to do the awwesome work
//}
//
//doAwesomeWork(on: "Diplomado") {
//    //Here goes the transformer
//} then: {
//    //Here goes the completion
//}
//
//doAwesomeWork(on: "Diplomado", using: {}, then: {})

// closures
//let volunteerCounts = [1, 4, 34, 32, 42, 943, 82, 23, 238]
//let volunteerAverage = [10.75, 4.2, 98.3, 8.4, 3.8, 16,815]

//func format(numbers: [Double], using formatter: (Double) -> String = {"\($0)"}) -> [String]
//{
//    var result = [String]()
//    for number in numbers
//    {
//        let transformedNumber = formatter(number)
//        result.append(transformedNumber)
//    }
//    return result
//}
//
//func rounder(_ number: Double) -> String
//{
//    let roundeedNumber: Int = Int(number)
//    return "\(roundeedNumber)"
//}
//
//func addDescription(_ number: Double) -> String
//{
//    return "volunteer average: \(number)"
//}
//let formatterAverageVolunteers = format(numbers: volunteerAverage, using: rounder)
//let descriptionAverageVolunteers = format(numbers: volunteerAverage, using: addDescription)
//
//let defaultVolunteerFormat = format(numbers: volunteerAverage)
//print(defaultVolunteerFormat)
//print(descriptionAverageVolunteers)

let volunteerCounts = [1, 4, 34, 32, 42, 943, 82, 23, 238]
let volunteerAverage = [10.75, 4.2, 98.3, 8.4, 3.8, 16.815]

// func puras - no modifica lo que tu le pasaste
// map

let roundedVolunteers = volunteerAverage.map { number in
    let roundedNUmbers = Int(number)
    return "\(roundedNUmbers)"
}

print(roundedVolunteers)

let roundedVolunteersINTegers = volunteerAverage.map { number in
    return Int(number)
}

print(roundedVolunteersINTegers)

//filter
let passingVolunteers = roundedVolunteersINTegers.filter { number in
    return number >= 10
}

print(passingVolunteers)

//reduce
let totalVolunteers = passingVolunteers.reduce(6) { partialResult, number in
    return partialResult + number
}
print(totalVolunteers)

let finalVolunteersDescription = passingVolunteers.reduce("The volunteers were") { partialResult, number in
    return partialResult + " \(number)"
}
print(finalVolunteersDescription)
