import Foundation

func solution(_ food: [Int]) -> String {
    var result = [String]()
    
    for i in 1..<food.count {
        let count = food[i] / 2
        result.append(String(repeating: "\(i)", count: count))
    }
    
    let frontPart = result.joined()
    let answer = frontPart + "0" + String(frontPart.reversed())
    
    return answer
}