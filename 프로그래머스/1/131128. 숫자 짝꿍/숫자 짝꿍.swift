import Foundation

func solution(_ X: String, _ Y: String) -> String {
    var countX = [Character: Int]()
    var countY = [Character: Int]()
    
    for char in X {
        countX[char, default: 0] += 1
    }

    for char in Y {
        countY[char, default: 0] += 1
    }
    
    var commonNumbers = [Character]()
    for digit in "0123456789" {
        if let countInX = countX[digit], let countInY = countY[digit] {
            let commonCount = min(countInX, countInY)
            commonNumbers += Array(repeating: digit, count: commonCount)
        }
    }
    

    if commonNumbers.isEmpty {
        return "-1"
    }
    
    commonNumbers.sort(by: >)
    let result = String(commonNumbers)
    if result.first == "0" {
        return "0"
    }
    
    return result
}
