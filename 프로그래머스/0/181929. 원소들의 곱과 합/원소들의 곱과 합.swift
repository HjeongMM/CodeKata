import Foundation

func solution(_ num_list:[Int]) -> Int {
    var multiply = 1
    var add = num_list.reduce(0, +)
    
    for i in num_list {
        multiply *= i
    }
    return multiply < add * add ? 1 : 0
}