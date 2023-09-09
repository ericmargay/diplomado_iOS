import Foundation

enum SpecialSquare: Int {
    case normal, stairjump2, stairjump5, stairjump8, stairjump9, snakedown13, snakedown18, snakedown21, snakedown23
}

var PositionOfPlay = 1
var CounterTurn = 0

while PositionOfPlay < 24 {
    let diceRoll = Int.random(in: 1...6)
    PositionOfPlay = min(24, PositionOfPlay + diceRoll)
    
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
    
    if PositionOfPlay == 24 {
        print("Has llegado a la casilla 24")
        break
    }
    
    CounterTurn += 1
    
}
