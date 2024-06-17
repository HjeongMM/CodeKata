import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let him = String(a) + String(b)
    let result = Int(him) ?? 0
    let result2 = 2 * a * b

    return result > result2 ? result : result2
}