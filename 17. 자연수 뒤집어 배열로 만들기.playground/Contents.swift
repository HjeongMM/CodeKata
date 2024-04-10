//    자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
//
//    제한 조건
//    n은 10,000,000,000이하인 자연수입니다.

import Foundation

func solution(_ n:Int64) -> [Int] {
    return Array(String(n).compactMap { $0.wholeNumberValue }.reversed())
}



print(solution(1234))

//문제 만들기: 정수 n이 주어지고 각 자릿수로 분리하여 짝수만 배출하기
func solution2(_ n:Int64) -> [Int] {
    return String(n).compactMap{ $0.wholeNumberValue }.filter{ $0 % 2 == 0}
}

print(solution2(123456789))
