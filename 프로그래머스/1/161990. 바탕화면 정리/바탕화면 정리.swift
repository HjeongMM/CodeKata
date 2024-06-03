import Foundation

func solution(_ wallpaper: [String]) -> [Int] {
    var minRow = Int.max
    var minCol = Int.max
    var maxRow = Int.min
    var maxCol = Int.min
    
    for (rowIndex, row) in wallpaper.enumerated() {
        for (colIndex, char) in row.enumerated() {
            if char == "#" {
                if rowIndex < minRow { minRow = rowIndex }
                if rowIndex > maxRow { maxRow = rowIndex }
                if colIndex < minCol { minCol = colIndex }
                if colIndex > maxCol { maxCol = colIndex }
            }
        }
    }
    return [minRow, minCol, maxRow + 1, maxCol + 1]
}
