import Foundation

func solution(_ myString:String) -> String {
    var result: String = ""
    for i in myString {
        if i == "a" || i == "A" {
            result.append("A")
        } else {
            result.append(i.lowercased())
        }
    }
    return result
}