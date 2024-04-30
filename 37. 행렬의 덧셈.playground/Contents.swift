import Foundation

//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    zip(arr1, arr2).map { zip($0, $1).map { $0 + $1 } }
//}
//
//
//print(solution([[1,2],[2,3]], [[3,4],[5,6]]))



func 바느질세트(_ 실:[String], _ 바늘:[String]) -> [[String]] {
    zip(실, 바늘).map { [$0, $1] }
}
print(바느질세트(["실1","실2","실3"], ["바늘1","바늘2","바늘3"]))


//
//let 실 = ["실1", "실2", "실3"]
//let 바늘 = ["바늘1", "바늘2", "바늘3"]
//
//let 바느질세트 = zip(실, 바늘)  // 실과 바늘 배열을 쌍으로 묶기
//
//for (s, b) in 바느질세트 {
//    print("\(s), \(b)")
//}
