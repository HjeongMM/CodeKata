import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var sum = Set<Int>()
    
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            sum.insert(numbers[i] + numbers[j])
        }
    }
    return Array(sum).sorted()
}