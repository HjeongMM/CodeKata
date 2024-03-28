//정수 n이 매개변수로 주어질 때 n의 각 자리 숫자의 합을 return하도록 solution 함수를 완성해주세요
//제한사항
//0 ≤ n ≤ 1,000,000


import Foundation

func solution(_ n:Int) -> Int {
    let digits = String(n).compactMap{ Int(String($0)) }
    let sum = digits.reduce(0, { $0 + $1 })
    return sum
}
