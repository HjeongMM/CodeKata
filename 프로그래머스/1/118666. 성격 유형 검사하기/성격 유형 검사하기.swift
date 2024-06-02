import Foundation

func solution(_ survey: [String], _ choices: [Int]) -> String {
    var scores: [Character: Int] = [
        "R": 0, "T": 0,
        "C": 0, "F": 0,
        "J": 0, "M": 0,
        "A": 0, "N": 0
    ]
    
    for (index, question) in survey.enumerated() {
        let choice = choices[index]
        
        if choice == 1 {
            scores[question.first!, default: 0] += 3
        } else if choice == 2 {
            scores[question.first!, default: 0] += 2
        } else if choice == 3 {
            scores[question.first!, default: 0] += 1
        } else if choice == 5 {
            scores[question.last!, default: 0] += 1
        } else if choice == 6 {
            scores[question.last!, default: 0] += 2
        } else if choice == 7 {
            scores[question.last!, default: 0] += 3
        }
    }
    
    var result = ""
    result += scores["R", default: 0] >= scores["T", default: 0] ? "R" : "T"
    result += scores["C", default: 0] >= scores["F", default: 0] ? "C" : "F"
    result += scores["J", default: 0] >= scores["M", default: 0] ? "J" : "M"
    result += scores["A", default: 0] >= scores["N", default: 0] ? "A" : "N"
    
    return result
}
