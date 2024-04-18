//    array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
//    divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.
//
//    제한사항
//    arr은 자연수를 담은 배열입니다.
//    정수 i, j에 대해 i ≠ j 이면 arr[i] ≠ arr[j] 입니다.
//    divisor는 자연수입니다.
//    array는 길이 1 이상인 배열입니다.

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var arr2: [Int] = []
    for i in arr {
        if i % divisor == 0 {
            arr2.append(i)
        }
    }
    return arr2.count == 0 ? [-1] : arr2.sorted{ $0 < $1 }
}

print(solution([3,2,6], 10))


/*---------------------*/
// filter 와 isEmpty를 이용해 가독성과 라인을 줄였다
// 그러나 왜인지 1보다는 실행 속도가 조금 느렸다.

func solution2(_ arr:[Int], _ divisor:Int) -> [Int] {
    let s = arr.filter { $0 % divisor == 0 }.sorted()
    return s.isEmpty ? [-1] : s
}

print(solution2([3,2,6], 10))
