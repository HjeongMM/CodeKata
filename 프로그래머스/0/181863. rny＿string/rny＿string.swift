import Foundation

func solution(_ rny_string:String) -> String {
    var my_string: String = ""
    
    for i in rny_string {
        if i == "m" {
            my_string.append("rn")
        } else {
            my_string.append(i)
        }
    }
    
    return my_string
}