import Foundation

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    let rows1 = arr1.count
    let cols1 = arr1[0].count
    let cols2 = arr2[0].count
    
    var result = Array(repeating: Array(repeating: 0, count: cols2), count: rows1)
    
    for i in 0..<rows1 {
        for j in 0..<cols2 {
            var sum = 0
            for k in 0..<cols1 {
                sum += arr1[i][k] * arr2[k][j]
            }
            result[i][j] = sum
        }
    }
    
    return result
}