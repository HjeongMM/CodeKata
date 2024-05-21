import Foundation

func solution(_ answers: [Int]) -> [Int] {
    let pattern1 = [1, 2, 3, 4, 5]
    let pattern2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let pattern3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var scores = [0, 0, 0]
    
    for (index, answer) in answers.enumerated() {
        if answer == pattern1[index % pattern1.count] {
            scores[0] += 1
        }
        if answer == pattern2[index % pattern2.count] {
            scores[1] += 1
        }
        if answer == pattern3[index % pattern3.count] {
            scores[2] += 1
        }
    }
    
    let maxScore = scores.max() ?? 0
    
    var result = [Int]()
    for (index, score) in scores.enumerated() {
        if score == maxScore {
            result.append(index + 1)
        }
    }
    
    return result
}