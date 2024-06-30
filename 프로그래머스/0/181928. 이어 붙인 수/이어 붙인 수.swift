import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd: [Int] = []
    var even: [Int] = []
    
    for i in num_list {
        if i % 2 != 0 {
            odd.append(i)
        } else {
            even.append(i)
        }
    }
    
    let evenSum = Int(even.map { String($0) }.joined())!
    let oddSum = Int(odd.map { String($0) }.joined())!
    
    return evenSum + oddSum
}