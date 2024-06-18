import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let ab = Int(String(a) + String(b))!
    let ba = Int(String(b) + String(a))!
    return ab > ba ? ab : ba
}