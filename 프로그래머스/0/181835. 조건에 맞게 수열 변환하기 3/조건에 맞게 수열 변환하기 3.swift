import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    if k % 2 != 0 {
        return arr.compactMap { $0 * k }
    } else {
        return arr.compactMap { $0 + k }
    }
}