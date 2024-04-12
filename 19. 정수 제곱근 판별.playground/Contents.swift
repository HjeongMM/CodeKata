//    임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
//    n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.
//
//    제한 사항
//    n은 1이상, 50000000000000 이하인 양의 정수입니다.

import Foundation

func solution(_ n:Int64) -> Int64 {
    let x = sqrt(Double(n)) // sqrt 제곱근 구하기 , pow 제곱하기
    let xPow = Int64(pow(Double(x + 1), 2))
    return x == Double(Int(x)) ? xPow : -1
}

print(solution(121))




//solution2

func solution2(_ n: Int64) -> Int64 {
    let r = Int64(sqrt(Double(n)))
    return r * r == n ? (r + 1) * (r + 1) : -1
}
