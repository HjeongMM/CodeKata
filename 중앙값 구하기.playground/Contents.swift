//    중앙값은 어떤 주어진 값들을 크기의 순서대로 정렬했을 때 가장 중앙에 위치하는 값을 의미합니다. 예를 들어 1, 2, 7, 10, 11의 중앙값은 7입니다. 정수 배열 array가 매개변수로 주어질 때, 중앙값을 return 하도록 solution 함수를 완성해보세요.
//
//    제한사항
//    array의 길이는 홀수입니다.
//    0 < array의 길이 < 100
//    -1,000 < array의 원소 < 1,000

import Foundation

func solution(_ array:[Int]) -> Int {
    guard array.count % 2 != 0 && array.count > 0 && array.count < 100 && array.allSatisfy({ $0 > -1000 && $0 < 1000}) else {
        print("배열의 길이는 홀수여야합니다. 원소는 -1000보다 크고 1000보다 작아야합니다")
        return 0
    }
    var sortedNum = array.sorted{ $0 < $1 }
    let middleIndex = sortedNum.count / 2
    return sortedNum[middleIndex]
}

//ex)

print(solution([0,3,2,5]))
