import Foundation

enum ArithmethicExpression {
    case number(Int)
    indirect case addition(ArithmethicExpression, ArithmethicExpression)
    indirect case multiplication(ArithmethicExpression, ArithmethicExpression)
    indirect case sustraction(ArithmethicExpression, ArithmethicExpression)
    indirect case division(ArithmethicExpression, ArithmethicExpression)
}

func evaluate(expression: ArithmethicExpression) -> Int {
    switch expression {
    
        case .number (let number) :
            return number
        
        case .addition (let leftExpression, let rightxpression) :
            return evaluate(expression:leftExpression) + evaluate(expression:rightxpression)

        case .multiplication (let leftExpression, let rightxpression) :
            return evaluate(expression:leftExpression) * evaluate(expression:rightxpression)
        
        case .sustraction (let leftExpression, let rightxpression) :
            return evaluate(expression:leftExpression) - evaluate(expression:rightxpression)
   
        case .division (let leftExpression, let rightxpression) :
        return evaluate(expression:leftExpression) / evaluate(expression:rightxpression)
    }
}

// (6+(4*(8-1)))/2
let eight = ArithmethicExpression.number(8)
let one = ArithmethicExpression.number(1)
let res = ArithmethicExpression.sustraction(eight, one)
let product2 = ArithmethicExpression.multiplication(ArithmethicExpression.number(4), res)
let sum2 = ArithmethicExpression.addition(ArithmethicExpression.number(6), product2)
let divis = ArithmethicExpression.division(sum2, ArithmethicExpression.number(2))
evaluate(expression: divis)
