//정수 num1, num2가 매개변수 주어집니다. num1과 num2를 곱한 값을 return 하도록 solution 함수를 완성해주세요.
//제한사항
//0 ≤ num1 ≤ 100
//0 ≤ num2 ≤ 100


import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    guard (0...100).contains(num1) && (0...100).contains(num2) else {
        fatalError("Input values are out of range.")
    }
    
    return num1 * num2
}


// EX)

let result = solution(3, 4)
let result2 = solution(27, 19)
print(result)
print(result2)


// simple ver

//func solution(_ num1: Int, _ num2: Int) -> Int {
//    return num1 * num2
//}
