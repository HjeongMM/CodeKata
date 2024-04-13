//    함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.
//
//    제한 조건
//    n은 1이상 8000000000 이하인 자연수입니다.
import Foundation

func solution(_ n:Int64) -> Int64 {
    var sortedNum = String(n).compactMap{ $0.wholeNumberValue }.sorted{$0 > $1} //반환값 스트링
    var result = sortedNum.map { String($0) }.joined()
    if let result = Int64(result) {
        return result
    } else {
        return 0
    }
}

print(solution(118372))



//개선

func solution2(_ n: Int64) -> Int64 {
    let result = String(n)
                    .compactMap { $0.wholeNumberValue }
                    .sorted(by: >)
                    .map { String($0) }
                    .joined()
    return Int64(result) ?? 0
}

print(solution(118372))
