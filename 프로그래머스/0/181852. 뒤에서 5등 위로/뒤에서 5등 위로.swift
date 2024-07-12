import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var sortedNum = num_list.sorted(by: <)
    var removeCount = 0
    
    while removeCount < 5 {
        sortedNum.removeFirst()
        removeCount += 1
    }

    return sortedNum
}