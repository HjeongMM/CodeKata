//    String형 배열 seoul의 element중 "Kim"의 위치 x를 찾아, "김서방은 x에 있다"는 String을 반환하는 함수, solution을 완성하세요. seoul에 "Kim"은 오직 한 번만 나타나며 잘못된 값이 입력되는 경우는 없습니다.
//
//    제한 사항
//    seoul은 길이 1 이상, 1000 이하인 배열입니다.
//    seoul의 원소는 길이 1 이상, 20 이하인 문자열입니다.
//    "Kim"은 반드시 seoul 안에 포함되어 있습니다.


import Foundation

func solution(_ seoul:[String]) -> String {
    let x = seoul.firstIndex(of: "Kim").map {"\($0)"} ?? "서울이 맞나요?"
    return "김서방은 \(x)에 있다"
}

print(solution(["Jane", "Kim"]))


/*--------------------------------------*/

func solution2(_ a:[String]) -> String {
    if let x = a.firstIndex(of: "Kim") {
        return "김서방은 \(x)에 있다"
    } else {
        return "김서방은 리스트에 없습니다."
    }
}

print(solution2(["Jane", "Kim"]))



// 배운 것. 
// 1. 배열에서 firstIndex키워드를 사용하여 몇번째에 있는지 찾을 수 있다 이떄의 값은 Optional(x)의 형태로 출력된다.
// 2. Optional이 붙지않고 정수만으로서 출력하고 싶다면 map{형태}로 전환해줄 수 있다.
// ex) .map {형태} ?? 없을경우의 출력문구

// 3. 고차함수에 아직 익숙치 않을 경우 if else문을 사용할 수도 있다.
