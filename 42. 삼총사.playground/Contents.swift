import Foundation

func solution(_ number: [Int]) -> Int {
    var count = 0
        for num1 in 0..<number.count {
            for num2 in num1+1..<number.count {
                for num3 in num2+1..<number.count {
                    if number[num1] + number[num2] + number[num3] == 0 {
                        count += 1
                    }
                }
            }
        }
        return count
}

