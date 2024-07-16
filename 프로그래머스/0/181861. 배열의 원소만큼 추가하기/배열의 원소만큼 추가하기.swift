import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = []
    for i in arr {
        for _ in 0..<i {
            result.append(i)
        }
    }
    return result
}