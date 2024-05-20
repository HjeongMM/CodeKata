import Foundation

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    let sortedScore = score.sorted(by: >)
    var maxProfit = 0
    
    let numBoxes = sortedScore.count / m
    
    for i in 0..<numBoxes {
        let boxScore = sortedScore[i * m + m - 1]
        maxProfit += boxScore * m
    }
    
    return maxProfit
}