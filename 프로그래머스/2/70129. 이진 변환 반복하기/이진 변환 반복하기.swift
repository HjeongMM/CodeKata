import Foundation

func solution(_ s: String) -> [Int] {
    var currentString = s
    var totalRemovedZeros = 0
    var transformationCount = 0
    
    while currentString != "1" {
        let removedZeros = currentString.filter { $0 == "0" }.count
        totalRemovedZeros += removedZeros
        currentString = currentString.filter { $0 != "0" }
        
        let length = currentString.count
        currentString = String(length, radix: 2)
        
        transformationCount += 1
    }
    
    return [transformationCount, totalRemovedZeros]
}