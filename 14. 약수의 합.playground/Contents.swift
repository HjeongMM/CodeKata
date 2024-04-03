//정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
//
//제한 사항
//n은 0 이상 3000이하인 정수입니다.

import Foundation

func solution(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    var divisorsSum = 0
    for i in 1...n {
        if n % i == 0 {
            divisorsSum += i
        }
    }
    return divisorsSum
}



print(solution(0))
