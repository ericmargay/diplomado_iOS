import XCTest

// First Principle // probando el codigo por pedazos pequeños
class MyTests: XCTestCase {
    func getFullName(namePersonTuple: (String, String?, String, String?)) -> String { //si no le dices test, o le poens parametros no lo tomara en cuenta
        
        return "\(namePersonTuple.0)" +
        "\(namePersonTuple.1 == nil || namePersonTuple.1 == "" ? "" : " " + namePersonTuple.1!)" + " " +
        "\(namePersonTuple.2)" +
        "\(namePersonTuple.3 == nil || namePersonTuple.3 == "" ? "" : " " + namePersonTuple.3!)"
    }
 
    func test_GetFullName() { //si no le dices test, o le poens parametros no lo tomara en cuenta
        
        //given // minimo un nombre y m{inimo un apellido
        let firstPerson: (String, String?, String, String?) = ("Luis", "Eric", "Perez", "Margay")
        let secondPerson: (String, String?, String, String?) = ("Luis", nil, "Perez", nil)
        let thirdPerson: (String, String?, String, String?) = ("Dante", "", "Sanchez", nil)
        
        //when - proceso que es una caja negra para nosotros
        let firstFullName = getFullName(namePersonTuple: firstPerson)
        let secondFullName = getFullName(namePersonTuple: secondPerson)
        let thirdFullName = getFullName(namePersonTuple: thirdPerson)
        
        //then
        XCTAssertEqual(firstFullName, "Luis Eric Perez Margay")
        XCTAssertEqual(secondFullName, "Luis Perez")
        XCTAssertEqual(thirdFullName, "Dante Sanchez")
    
    }
}
MyTests.defaultTestSuite.run()

