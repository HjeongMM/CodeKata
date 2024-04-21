//    0부터 9까지의 숫자 중 일부가 들어있는 정수 배열 numbers가 매개변수로 주어집니다. numbers에서 찾을 수 없는 0부터 9까지의 숫자를 모두 찾아 더한 수를 return 하도록 solution 함수를 완성해주세요.
//
//    제한사항
//    1 ≤ numbers의 길이 ≤ 9
//    0 ≤ numbers의 모든 원소 ≤ 9
//    numbers의 모든 원소는 서로 다릅니다.

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var 다더해 = 0
    var 영부터구 = Set<Int>(0...9)
    for i in numbers {
        영부터구.remove(i)
    }
    for 남은애 in 영부터구 {
        다더해 += 남은애
    }
    return 다더해
}
//numbers에 없는애를 찾기
//걔네 더하기

print(solution([5,8,4,0,6,7,9]))
