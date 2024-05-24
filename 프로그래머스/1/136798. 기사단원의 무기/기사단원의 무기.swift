import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var kgCount = 0

    for i in 1...number {
        var count = 0
        let sqrtI = Int(Double(i).squareRoot())
        for j in 1...sqrtI {
            if i % j == 0 {
                if j * j == i {
                    count += 1
                } else {
                    count += 2
                }
            }
        }
        if count <= limit {
            kgCount += count
        } else {
            kgCount += power
        }
    }

    return kgCount
}

