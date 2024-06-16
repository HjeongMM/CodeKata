import Foundation

func solution(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
    var myStringArray = Array(my_string)
    let overwriteArray = Array(overwrite_string)
    let overwriteLength = overwrite_string.count
    
    for i in 0..<overwriteLength {
        if s + i < myStringArray.count {
            myStringArray[s + i] = overwriteArray[i]
        }
    }
    
    return String(myStringArray)
}
