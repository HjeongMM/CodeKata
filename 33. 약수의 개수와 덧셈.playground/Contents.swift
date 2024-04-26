//    두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
// 제한사항 : 1 ≤ left ≤ right ≤ 1,000

import Foundation

func solution(left: Int, right: Int) -> Int {
    var result = 0
    for i in left...right {
        if Int(sqrt(Double(i))) * Int(sqrt(Double(i))) == i {
            result -= i
        } else {
            result += i
        }
    }
    return result
}

// 예시
print(solution(left: 24, right: 27))



// 약수가 홀수인 수는 완전제곱수이다
// i의 제곱근 * 제곱근 = i 인지 검사하고 true일시 완전제곱수라는 뜻이므로 result에서 빼줌
// false일시 완전제곱수가 아니므로 더한다.
// left부터 right의 수를 검사한다.
