import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]]()

    for i in 0..<arr1.count {
        var row = [Int]()
        for j in 0..<arr1[i].count {
            row.append(arr1[i][j] + arr2[i][j])
        }
        result.append(row)
    }
    return result
}

