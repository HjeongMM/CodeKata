// 정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.
// 제한사항
// 0 ≤ numbers의 원소 ≤ 1,000
// 1 ≤ numbers의 길이 ≤ 100
// 정답의 소수 부분이 .0 또는 .5인 경우만 입력으로 주어집니다.


import Foundation

func solution(_ numbers:[Int]) -> Double {
    //제한사항
    guard !numbers.isEmpty, numbers.count <= 100, numbers.allSatisfy({ 0...1000 ~= $0 }) else {
        fatalError("Out of range...")
    }
    //평균값 구하기
    let sum = numbers.reduce(0, +)
    let average = Double(sum) / Double(numbers.count)
    return average
    
    //소수점 첫번째가 0이라면 정수형 반환하기 (Output Any)
    //return floor(average) == average ? Int(average) : average
    
}

// ex)

print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(solution([89, 90, 91, 92, 93, 94, 95, 96, 97]))
