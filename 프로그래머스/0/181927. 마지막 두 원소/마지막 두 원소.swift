import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    let last = num_list.last!
    let lastPrevious = num_list[num_list.count - 2]
    var result:[Int] = num_list

    if last > lastPrevious {
        result.append(last - lastPrevious)
    } else {
        result.append(num_list.last! * 2)
    }
    return result
}