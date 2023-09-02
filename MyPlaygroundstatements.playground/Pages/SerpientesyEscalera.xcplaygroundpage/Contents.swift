import Foundation

enum SpecialSquare: Int {
    case normal, stairjump2, stairjump5, stairjump8, stairjump9, snakedown13, snakedown18, snakedown21, snakedown23
}

var PositionOfPlay = 1
var CounterTurn = 0

while PositionOfPlay < 25 {
    let diceRoll = Int.random(in: 1...6)
    PositionOfPlay = min(25, PositionOfPlay + diceRoll)
    
    if let specialSquare = SpecialSquare(rawValue: PositionOfPlay) {
        switch specialSquare {
            case .stairjump2: PositionOfPlay = 10 // stairjump2 to 10
            case .stairjump5: PositionOfPlay = 16
            case .stairjump8: PositionOfPlay = 17
            case .stairjump9: PositionOfPlay = 11
            case .snakedown13: PositionOfPlay = 3
            case .snakedown18: PositionOfPlay = 7
            case .snakedown21: PositionOfPlay = 10
            case .snakedown23: PositionOfPlay = 15
            default: break
        }
    }
    
    if PositionOfPlay == 25 {
        print("Win")
        break
    }
    
    CounterTurn += 1
    
    print("Tirada \(CounterTurn): Has sacado \(diceRoll). Avanzas a la casilla \(PositionOfPlay)")
}
