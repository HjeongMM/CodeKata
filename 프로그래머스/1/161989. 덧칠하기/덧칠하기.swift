import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count = 0
    var currentEnd = 0
    
    for i in section {
        if i > currentEnd {
            count += 1
            currentEnd = i + m - 1
        }
    }
    return count
}