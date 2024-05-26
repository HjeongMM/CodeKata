import Foundation

func solution(_ babbling: [String]) -> Int {
    let validWords = ["aya", "ye", "woo", "ma"]
    var count = 0
    
    for word in babbling {
        var tempWord = word
        var isValid = true
        
        var prevSound = ""
        
        while !tempWord.isEmpty {
            var found = false
            for sound in validWords {
                if tempWord.hasPrefix(sound) {
                    // 같은 발음이 연속되면 유효하지 않음
                    if sound == prevSound {
                        isValid = false
                        break
                    }
                    prevSound = sound
                    tempWord.removeFirst(sound.count)
                    found = true
                    break
                }
            }
            if !found {
                isValid = false
                break
            }
        }
        
        if isValid {
            count += 1
        }
    }
    
    return count
}
