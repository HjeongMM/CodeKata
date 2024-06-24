import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    let condition: Bool
    switch ineq + eq {
    case "<!" : condition = n < m
    case ">!" : condition = n > m
    case "<=" : condition = n <= m
    case ">=" : condition = n >= m
    default : return 0
    }
    return condition ? 1 : 0
}