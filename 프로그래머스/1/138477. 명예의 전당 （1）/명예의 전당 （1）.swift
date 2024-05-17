import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var fame: [Int] = []
    var result: [Int] = []
    
    for i in score {
        fame.append(i)
        fame.sort(by: >)
        if fame.count > k {
            fame = Array(fame.prefix(k))
        }
        if let kthScore = fame.last {
            result.append(kthScore)
        }

    }
    return result
}