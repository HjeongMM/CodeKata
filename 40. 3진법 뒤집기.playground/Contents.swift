import Foundation


func solution(_ n:Int) -> Int {
    var num = n
    var results : [Int] = []
    while num > 0 {
        results.append(num % 3)
        num /= 3
    }
    let combineNum = results.map { String($0) }.joined()
    let length = combineNum.count
    var decimal = 0
    for (index, char) in combineNum.enumerated() {
        if let digit = Int(String(char)) {
            decimal += digit * Int(pow(3.0, Double(length - index - 1)))
        }
    }
    return decimal
}
