import Foundation

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    var index1 = 0
    var index2 = 0
    
    for word in goal {
        if index1 < cards1.count && cards1[index1] == word {
            index1 += 1
        } else if index2 < cards2.count && cards2[index2] == word {
            index2 += 1
        } else {
            return "No"
        }
    }
    
    return "Yes"
}