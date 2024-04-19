//    어떤 정수들이 있습니다. 이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다. 실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
//
//    제한사항
//    absolutes의 길이는 1 이상 1,000 이하입니다.
//    absolutes의 모든 수는 각각 1 이상 1,000 이하입니다.
//    signs의 길이는 absolutes의 길이와 같습니다.
//    signs[i] 가 참이면 absolutes[i] 의 실제 정수가 양수임을, 그렇지 않으면 음수임을 의미합니다.

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {

    var string변환 = absolutes.map ({ (value:Int) -> String in return String(value) })
    var fufu: [String] = []
    for i in signs {
        if i == true {
            fufu.append("+")
        } else {
            fufu.append("-")}
    }
    let 부호붙이기 = zip(fufu, string변환).map { $0 + $1 }
    let 부호있는배열 = 부호붙이기.map ({ (value:String) -> Int in return Int(value)! })
    return 부호있는배열.reduce(0, {$0 + $1})
}

print(solution([1,2,3], [false,false,true]))


func solution2(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    let total = zip(absolutes, signs)
        .map { absolute, sign in return sign ? absolute : -absolute }
        .reduce(0, +)
    return total
}

print(solution2([4,7,12], [true,false,true]))
