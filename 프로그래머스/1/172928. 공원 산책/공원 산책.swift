import Foundation

func solution(_ park: [String], _ routes: [String]) -> [Int] {
    let directions: [String: (Int, Int)] = ["N": (-1, 0), "S": (1, 0), "E": (0, 1), "W": (0, -1)]
    
    var startRow = 0
    var startCol = 0
    let rows = park.count
    let cols = park[0].count
    
    for r in 0..<rows {
        for c in 0..<cols {
            if park[r][park[r].index(park[r].startIndex, offsetBy: c)] == "S" {
                startRow = r
                startCol = c
                break
            }
        }
    }
    
    var currentRow = startRow
    var currentCol = startCol
    
    for route in routes {
        let parts = route.split(separator: " ")
        let direction = String(parts[0])
        let distance = Int(parts[1])!
        
        let (dr, dc) = directions[direction]!
        var newRow = currentRow
        var newCol = currentCol
        var validMove = true
        
        for _ in 1...distance {
            newRow += dr
            newCol += dc
            
            if newRow < 0 || newRow >= rows || newCol < 0 || newCol >= cols || park[newRow][park[newRow].index(park[newRow].startIndex, offsetBy: newCol)] == "X" {
                validMove = false
                break
            }
        }
        
        if validMove {
            currentRow = newRow
            currentCol = newCol
        }
    }
    
    return [currentRow, currentCol]
}
