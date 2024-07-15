import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count > arr2.count {
        return 1
    } else if arr1.count == arr2.count {
        if arr1.reduce (0, +) > arr2.reduce(0, +) {
            return 1
        } else if arr1.reduce (0, +) == arr2.reduce(0, +) {
            return 0
        } else {
            return -1
        }
    } else {
        return -1
    }
}