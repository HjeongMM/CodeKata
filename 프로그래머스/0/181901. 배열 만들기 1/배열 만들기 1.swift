import Foundation

func solution(_ n: Int, _ k: Int) -> [Int] {
    var result: [Int] = []
    
    for i in 1...n {
        if i % k == 0 {
            result.append(i)
        }
    }
    return result
}