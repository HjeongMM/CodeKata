import Foundation

func solution(_ num_str:String) -> Int {
    let convert = Array(num_str).compactMap { Int(String($0)) }
    return convert.reduce(0, +)
}