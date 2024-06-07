import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
let c = a + b

print("\(a) + \(b) = \(c)")