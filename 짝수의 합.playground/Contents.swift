// 정수 n이 주어질 때, n이하의 짝수를 모두 더한 값을 return 하도록 solution 함수를 작성해주세요.
// 제한사항 0 < n <= 1000

import Foundation

func solution(_ n: Int) -> Int {
    guard n > 0 && n <= 1000 else {
        fatalError("1이상 1000이하의 값을 입력하세요")
    }
    var result = 0
    for i in 1...n {
        if i % 2 == 0 {
            result += i
        }
    }
    return result
}

// ex)

print(solution(10))
