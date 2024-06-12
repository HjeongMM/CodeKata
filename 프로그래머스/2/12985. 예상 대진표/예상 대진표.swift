import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var answer = 0
    var a = a
    var b = b
    
    while a != b {
        a = (a + 1) / 2
        b = (b + 1) / 2
        answer += 1
    }
    print("최종라운드 : \(answer)")
    return answer
}