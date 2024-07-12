import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let sortedNum = num_list.sorted(by: <)
    return Array(sortedNum.dropFirst(5))
}