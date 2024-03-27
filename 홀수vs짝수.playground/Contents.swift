// 정수 리스트 num_list가 주어집니다. 가장 첫 번째 원소를 1번 원소라고 할 때, 홀수 번째 원소들의 합과 짝수 번째 원소들의 합 중 큰 값을 return 하도록 solution 함수를 완성해주세요. 두 값이 같을 경우 그 값을 return합니다.
// 제한 사항
// 5 ≤ num_list의 길이 ≤ 50
// -9 ≤ num_list의 원소 ≤ 9

import Foundation

func solution(_ num_list: [Int]) -> Int {
    var oddSum = 0
    var evenSum = 0
    for (index, value) in num_list.enumerated() {
        index % 2 == 0 ? (oddSum += value) : (evenSum += value)
    }
    return max(oddSum, evenSum)
}
