import Foundation

func solution(_ s: String) -> Int {
    var count = 0
    var i = s.startIndex

    while i < s.endIndex {
        var x = s[i]
        var xCount = 0
        var otherCount = 0
        
        while i < s.endIndex {
            if s[i] == x {
                xCount += 1
            } else {
                otherCount += 1
            }
            
            i = s.index(after: i)
            
            if xCount == otherCount {
                break
            }
        }
        
        count += 1
    }
    
    return count
}