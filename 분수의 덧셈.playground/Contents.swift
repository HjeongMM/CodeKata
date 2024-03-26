// 첫 번째 분수의 분자와 분모를 뜻하는 numer1, denom1, 두 번째 분수의 분자와 분모를 뜻하는 numer2, denom2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.
// 제한사항
// 0 <numer1, denom1, numer2, denom2 < 1,000


import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    // 제한사항
    let inputRange = [numer1, denom1, numer2, denom2]
    guard inputRange.allSatisfy({ 1..<1000 ~= $0 }) else {
        fatalError("Out of range...")
    }
    // 최대공약수 구하기
    func gcd(_ x: Int, _ y: Int) -> Int {
        return y == 0 ? x : gcd(y, x % y)
    }
    // 분수의 덧셈
    let numerator = numer1 * denom2 + numer2 * denom1
    let denominator = denom1 * denom2
    let gdcValue = gcd(numerator, denominator)
    
    return [ numerator / gdcValue, denominator / gdcValue]
}
