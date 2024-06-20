import Foundation

func isValidBracketString(_ s: String) -> Bool {
    var stack = [Character]()
    let matchingBracket: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    
    for char in s {
        if let match = matchingBracket[char] {
            if stack.isEmpty || stack.removeLast() != match {
                return false
            }
        } else {
            stack.append(char)
        }
    }
    
    return stack.isEmpty
}

func rotateString(_ s: String, by positions: Int) -> String {
    let index = s.index(s.startIndex, offsetBy: positions)
    return String(s[index...]) + String(s[..<index])
}

func solution(_ s: String) -> Int {
    var validCount = 0
    
    for i in 0..<s.count {
        let rotated = rotateString(s, by: i)
        if isValidBracketString(rotated) {
            validCount += 1
        }
    }
    
    return validCount
}
