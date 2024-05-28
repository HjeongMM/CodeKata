import Foundation

func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    var lostSet = Set(lost).subtracting(Set(reserve))
    var reserveSet = Set(reserve).subtracting(Set(lost))

    for r in reserveSet.sorted() {
        if lostSet.contains(r - 1) {
            lostSet.remove(r - 1)
        } else if lostSet.contains(r) {
            lostSet.remove(r)
        } else if lostSet.contains(r + 1) {
            lostSet.remove(r + 1)
        }
    }

    return n - lostSet.count
}