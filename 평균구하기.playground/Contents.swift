import Foundation

func solution(_ arr: [Int]) -> Double {
    var sum = arr.reduce(0, +)
    let average = Double(sum) / Double(arr.count)
    return average
}

print(solution([1,2,3,4]))
