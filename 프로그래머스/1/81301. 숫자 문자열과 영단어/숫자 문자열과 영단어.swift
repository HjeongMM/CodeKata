import Foundation

func solution(_ s: String) -> Int {
    let couple = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9]
    
    func findValue(from string: String, with mappings: [String: Int]) -> Int {
        var combinedString = ""
        var currentString = string
        
        while !currentString.isEmpty {
            var matched = false
            
            for (key, value) in mappings {
                if currentString.starts(with: key) {
                    combinedString += String(value)
                    currentString.removeFirst(key.count)
                    matched = true
                    break
                }
            }

            if !matched {
                if let num = currentString.first?.wholeNumberValue {
                    combinedString += String(num)
                    currentString.removeFirst()
                }
            }
        }
        
        return Int(combinedString)!
    }
    return findValue(from: s, with: couple)
}