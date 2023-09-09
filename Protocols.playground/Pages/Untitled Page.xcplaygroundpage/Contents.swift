import Foundation

// abstracciones en c{odigo otro paradigma de programacion
// encapsular ciertas caraceteristicas del codigo
// definir una interfaz
//EL tipo conforma el protocolo
//
//Separacion de variables permite resolver problemas de manera mas sencilla
//let data = [
//    ["Exa", "30", "6"],
//    ["Saleh", "40", "18"],
//    ["Amin", "50", "28"],
//]

//func printTaable (_ data: [[String]], withColumnHeaders columnLabels: [[String]]) {
func printTaable (_ dataSource: TabularDataSource) {
//    var headerRow = "|"
//    var columnsWidths = [Int]()

//    for columnLabel in columnLabels {
    for index in 0..<dataSource.numberOfColumns {
        let columnHeader = " \(columnLabel) |"
        headerRow += columnHeader
        columnsWidths.append(columnLabel.count)
    }
    print(headerRow)

    for row in data {
        // Start output string
//        var output = "|"

    for index in 0..<dataSource.numberOfRows {
//      for (index, item) in row.enumerated() {
        for columnIndex in 0..<dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: index, column: columnIndex)
//            let paddingNeeded = columnsWidths[index] - item.count
            let paddingNeeded = columnsWidths[columnIndex] - item.count
            let padding = repeatElement(" ", count:
                paddingNeeded).joined(separator: "")
            output += "\(padding)\(item) |"
        }
//        for item in row {
//            output += " \(item) |"
//        }
        print(output)
    }
}

printTaable(data, withColumnHeaders: ["Employee name", "name", "Years of Experience"])

// Conyrato que algun tipo deba de satsfacer, propiedas y metodos
protocol TabularDataSource {
    var numberOfRows: Int { get } // propiedad
    var numberOfColumns: Int { get }
    
    func label(forColumn column: Int) -> String
    func itemFor(row: Int, column: Int) -> String
}



struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource {
    
    let name: String
    var people = [Person]()
    
    init(name:String) {
        self.name = name
    }
    
    mutating func add(_ person: Person) {
        people.append(person)
    }
    
    var numberOfRows: Int { people.count } // puedo quitar el return // propiedad computada
    var numberOfColumns: Int { 3 }
    
    func label(forColumn column: Int) -> String {
        let columnHeader: String
        switch column {
            case 0:
//                return "Employee name"
                columnHeader = "Employee name"
            case 1:
//                return "Age"
                columnHeader = "Age"
            case 2:
//                return "Years of experience"
                columnHeader = "Years of experience"

            default: fatalError("Invalid column header index")
        }
        return columnHeader
    }
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        
        switch column {
        case 0: return person.name
        case 1: return
        }
    }
    
}

var deparment = Department(name: "Engineering")
deparment.add(Person(name: "Eva", age: 30, yearsOfExperience: 6))
deparment.add(Person(name: "Saleh", age: 40, yearsOfExperience: 18))
deparment.add(Person(name: "Amit", age: 50, yearsOfExperience: 28))

printTaable(deparment)
