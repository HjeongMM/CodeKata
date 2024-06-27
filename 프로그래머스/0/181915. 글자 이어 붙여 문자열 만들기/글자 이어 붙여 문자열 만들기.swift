import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    let char = Array(my_string)
    var result = ""
    
    for index in index_list {
        result.append(char[index])
    }
    
    return result
}