import Foundation

func solution(_ s: String) -> [Int] {
    let alphabet = Array(s)
    var distances: [Int] = []
    var seen: [Character: Int] = [:]
    
    for i in 0..<alphabet.count {
        let char = alphabet[i]
        if let lastIndex = seen[char] {
            distances.append(i - lastIndex)
        } else {
            distances.append(-1)
        }
        seen[char] = i
    }
    
    return distances
}