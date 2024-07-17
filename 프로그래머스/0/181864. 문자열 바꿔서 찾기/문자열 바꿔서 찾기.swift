import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var transformMyString: String = ""
    for i in myString {
        if i == "A" {
            transformMyString.append("B")
        } else {
            transformMyString.append("A")
        }
    }
    return transformMyString.contains(pat) ? 1 : 0
}