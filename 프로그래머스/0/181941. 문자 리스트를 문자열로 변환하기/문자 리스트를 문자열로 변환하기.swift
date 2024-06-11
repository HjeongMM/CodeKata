import Foundation

func solution(_ arr:[String]) -> String {
    return arr.reduce("") { $0 + $1 }
}