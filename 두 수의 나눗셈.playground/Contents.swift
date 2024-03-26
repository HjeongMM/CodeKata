//정수 num1과 num2가 매개변수로 주어질 때, num1을 num2로 나눈 값에 1,000을 곱한 후 정수 부분을 return 하도록 soltuion 함수를 완성해주세요.
//제한사항
//0 < num1 ≤ 100
//0 < num2 ≤ 100


import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard (0...100).contains(num1) && (0...100).contains(num2) else{
        fatalError("out of range")
    }
    let result = Double(num1) / Double(num2) * 1000
    return Int(result)
}

// EX)

print(solution(3, 2))


// simple

func solutionSimple(_ num1:Int, _ num2:Int) -> Int {
    let result = num1 / num2 * 1000
    return result
}

print(solution(3, 2))
