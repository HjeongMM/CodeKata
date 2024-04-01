//정수 num1과 num2가 주어질 때, num1과 num2의 합을 return하도록 soltuion 함수를 완성해주세요.
//제한사항
//-50,000 ≤ num1 ≤ 50,000
//-50,000 ≤ num2 ≤ 50,000


import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard [num1, num2].allSatisfy((-50000...50000).contains) else {
        print("-50,000에서 50,000까지의 값을 입력하세요")
        return 0
    }
    return num1 + num2
}




