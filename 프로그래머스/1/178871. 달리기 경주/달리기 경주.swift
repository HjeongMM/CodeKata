import Foundation

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var playerDict = [String: Int]()
    var players = players
    
    for (index, player) in players.enumerated() {
        playerDict[player] = index
    }
    
    for calling in callings {
        if let currentIndex = playerDict[calling] {
            if currentIndex == 0 {
                continue
            }
            
            let prevIndex = currentIndex - 1
            let prevPlayer = players[prevIndex]
            
            players[currentIndex] = prevPlayer
            players[prevIndex] = calling
            
            playerDict[calling] = prevIndex
            playerDict[prevPlayer] = currentIndex
        }
    }
    
    return players
}