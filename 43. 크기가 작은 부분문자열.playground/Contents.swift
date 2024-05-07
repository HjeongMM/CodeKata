//숫자로 이루어진 문자열 t와 p가 주어질 때, t에서 p와 길이가 같은 부분문자열 중에서, 이 부분문자열이 나타내는 수가 p가 나타내는 수보다 작거나 같은 것이 나오는 횟수를 return하는 함수 solution을 완성하세요.
//
//예를 들어, t="3141592"이고 p="271" 인 경우, t의 길이가 3인 부분 문자열은 314, 141, 415, 159, 592입니다. 이 문자열이 나타내는 수 중 271보다 작거나 같은 수는 141, 159 2개 입니다.


import Foundation

func solution(_ t:String, _ p:String) -> Any {
    
    let pCount = p.count
    var arr2: [String] = []

    for i in stride(from: 0, through: t.count - pCount, by: 1) {
        let start = t.index(t.startIndex, offsetBy: i)
        let end = t.index(start, offsetBy: pCount)
        let substring = String(t[start..<end])
        if substring <= p {
            arr2.append(substring)
        }
    }

    return arr2.count
}

print(solution("500220839878", "7"))



//이전 과정

//import Foundation
//
//func solution(_ t:String, _ p:String) -> Any {
//    
//    var pCount = p.count
//    var arr1: [String] = []
//    var arr2: [String] = []
//    
//    for i in 0...(t.count - pCount) {
//        let start = t.index(t.startIndex, offsetBy: i)
//        let end = t.index(start, offsetBy: pCount)
//        let substring = String(t[start..<end])
//        arr1.append(substring)
//    }
//    
//    for i in arr1 {
//        if let intValue = Int(i), intValue <= Int(p)! {
//            arr2.append(i)
//        }
//    }
//    
//    
//    return arr2.count
//}
//
//
//
//print(solution("500220839878", "7"))
//
//
