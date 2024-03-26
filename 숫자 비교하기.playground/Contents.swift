//정수 num1과 num2가 매개변수로 주어집니다. 두 수가 같으면 1 다르면 -1을 retrun하도록 solution 함수를 완성해주세요.
//제한사항
//0 ≤ num1 ≤ 10,000
//0 ≤ num2 ≤ 10,000


func solution(_ num1:Int, _ num2:Int) -> Int {
    guard (0...10000).contains(num1) && (0...10000).contains(num2) else{
        fatalError("out of range")
    }
    if num1 == num2 {
        return 1
    } else {
        return -1
    }
}

// EX)

let result = solution(2, 3)
print(result)



// simple

func solutionSimple(_ num1:Int, _ num2:Int) -> Int {
    return num1 == num2 ? 1 : -1
}

print(solution(2, 3))
