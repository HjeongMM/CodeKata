func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

func solution(_ arr: [Int]) -> Int {
    var result = arr[0]
    for num in arr {
        result = lcm(result, num)
    }
    return result
}