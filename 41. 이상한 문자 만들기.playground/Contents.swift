import Foundation

func solution(_ s:String) -> String {
    let words = s.split(separator: " ", omittingEmptySubsequences: false).map(String.init)
    let transformedWords = words.map { word -> String in
        let transformedWord = word.enumerated().map { index, character -> String in
            if index % 2 == 0 {
                return character.uppercased()
            } else {
                return character.lowercased()
            }
        }.joined()
        return transformedWord
    }
    return transformedWords.joined(separator: " ")
}

print(solution("try hello world"))
