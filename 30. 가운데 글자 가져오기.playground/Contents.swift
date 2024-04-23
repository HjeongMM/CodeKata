//    단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
//
//    재한사항
//    s는 길이가 1 이상, 100이하인 스트링입니다.

import Foundation
func solution(_ s:String) -> String {
    let oddMid = s.index(s.startIndex, offsetBy: s.count / 2)
    if s.count % 2 == 1 {
        return String(s[oddMid])
    } else {
        let evenMid = s.index(before: oddMid)
        let nextNum = s.index(after: evenMid)
        return String(s[evenMid...nextNum])
    }
    
}

print(solution("qwerty"))



//1. if로 최대한 간단하게 추려냄
//2. 필요한 상수가 특정 조건에서만 필요할때는 그 블록 속에 넣음
//3. 그 다음, 그 다음 세부적인 계산으로 좁혀나간다



//----------------------------------------------------


//func solution2(_ s:String) -> String {
//
//    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
//}
//
//print(solution2("qwerty"))
