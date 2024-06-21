import Foundation

func solution(_ elements: [Int]) -> Int {
    var uniqueSums = Set<Int>()
    let n = elements.count
    let extendedElements = elements + elements
    
    for length in 1...n {
        var subarraySum = extendedElements[0..<length].reduce(0, +)
        uniqueSums.insert(subarraySum)
        
        for start in 1..<n {
            subarraySum = subarraySum - extendedElements[start - 1] + extendedElements[start + length - 1]
            uniqueSums.insert(subarraySum)
        }
    }
    
    return uniqueSums.count
}
