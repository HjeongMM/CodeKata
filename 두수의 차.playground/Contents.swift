//정수 num1과 num2가 주어질 때, num1에서 num2를 뺀 값을 return하도록 soltuion 함수를 완성해주세요.
//제한사항
//-50,000 ≤ num1 ≤ 50,000
//-50,000 ≤ num2 ≤ 50,000


import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    guard (-50000...50000).contains(num1) && (-50000...50000).contains(num2) else {
        fatalError("Input values are out of range.")
    }
    
    return num1 - num2
}

// EX)

let result = solution(2, 3)
let result2 = solution(100, 2)
print(result)
print(result2)




// simple ver


//func solution(_ num1: Int, _ num2: Int) -> Int {
//    return num1 - num2
//}
