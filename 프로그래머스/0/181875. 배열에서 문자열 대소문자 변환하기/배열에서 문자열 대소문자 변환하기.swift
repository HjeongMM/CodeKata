import Foundation

func solution(_ strArr:[String]) -> [String] {
    var result: [String] = []
    
    for (index, str) in strArr.enumerated() {
        if index % 2 == 0 {
            result.append(str.lowercased())
        } else {
            result.append(str.uppercased())
        }
    }
    return result
}