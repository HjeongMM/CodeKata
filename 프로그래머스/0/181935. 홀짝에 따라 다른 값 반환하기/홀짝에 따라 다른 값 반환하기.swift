import Foundation

func solution(_ n:Int) -> Int {
    var result: [Int] = []
    if n % 2 != 0 {
        for i in 0...n {
            if i % 2 != 0 {
                result.append(i)
            }
        }
    } else {
        for i in 0...n {
            if i % 2 == 0 {
                result.append(i*i)
            }
        }
    }
    return result.reduce(0, +)
}