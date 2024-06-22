import Foundation

func solution(_ citations: [Int]) -> Int {
    let sortedCitations = citations.sorted(by: >)
    
    var hIndex = 0
    
    for i in 0..<sortedCitations.count {
        if sortedCitations[i] >= i + 1 {
            hIndex = i + 1
        } else {
            break
        }
    }
    
    return hIndex
}