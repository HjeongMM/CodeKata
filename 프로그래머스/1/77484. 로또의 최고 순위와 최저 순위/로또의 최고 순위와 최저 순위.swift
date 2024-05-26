import Foundation

func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    let matchCount = lottos.filter { win_nums.contains($0) }.count
    let zeroCount = lottos.filter { $0 == 0 }.count
    let highestRank = getRank(matchCount + zeroCount)
    let lowestRank = getRank(matchCount)

    return [highestRank, lowestRank]
}

func getRank(_ matchCount: Int) -> Int {
    switch matchCount {
    case 6: return 1
    case 5: return 2
    case 4: return 3
    case 3: return 4
    case 2: return 5
    default: return 6
    }
}
