import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let sortedNum = num_list.sorted(by: <)
    var result: [Int] = []
    for i in sortedNum {
        if result.count != 5 {
            result.append(i)
        }
    }
    return result
}