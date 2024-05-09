import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let sortedWH = sizes.map { $0.sorted(by: >) }
    let maxW = sortedWH.max(by: {$0[0] < $1[0] })![0]
    let maxH = sortedWH.max(by: {$0[1] < $1[1] })![1]
    return maxW * maxH
}
