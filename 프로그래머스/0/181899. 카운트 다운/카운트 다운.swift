import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var result: [Int] = []
    for i in end_num...start_num {
        result.append(i)
    }
    return result.sorted(by: >)
}