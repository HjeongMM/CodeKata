import Foundation

func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    var keyDict = [Character: Int]()
    
    for (index, key) in keymap.enumerated() {
        for (i, char) in key.enumerated() {
            if let currentMin = keyDict[char] {
                keyDict[char] = min(currentMin, i + 1)
            } else {
                keyDict[char] = i + 1
            }
        }
    }
    
    var result = [Int]()
    
    for target in targets {
        var pressCount = 0
        var isPossible = true
        
        for char in target {
            if let minPress = keyDict[char] {
                pressCount += minPress
            } else {
                isPossible = false
                break
            }
        }
        
        result.append(isPossible ? pressCount : -1)
    }
    
    return result
}