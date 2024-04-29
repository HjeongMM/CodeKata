//    문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요. 예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.


import Foundation

func solution(_ s:String) -> Bool {
    (s.count == 4 || s.count == 6) && s.allSatisfy { $0.isNumber }
}
