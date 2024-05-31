import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    let skipSet = Set(skip)
    let filteredAlphabet = alphabet.filter { !skipSet.contains($0) }
    let alphabetCount = filteredAlphabet.count
    
    func shiftedCharacter(_ char: Character, by offset: Int) -> Character {
        if let currentIndex = filteredAlphabet.firstIndex(of: char) {
            let newIndex = (currentIndex + offset) % alphabetCount
            return filteredAlphabet[newIndex]
        }
        return char
    }
    
    let result = s.map { shiftedCharacter($0, by: index) }
    return String(result)
}