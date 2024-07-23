import Foundation

func solution(_ my_string:String, _ alp: String) -> String {
    var result: [String] = []
    for i in my_string {
        if alp.contains(i) {
            result.append(i.uppercased())
        } else {
            result.append(String(i))
        }
    }
    return result.reduce("", +)
}