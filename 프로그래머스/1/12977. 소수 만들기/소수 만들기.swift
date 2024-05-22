import Foundation

func isPrime(_ n: Int) -> Bool {
    if n <= 1 { return false }
    if n <= 3 { return true }
    if n % 2 == 0 || n % 3 == 0 { return false }
    var i = 5
    while i * i <= n {
        if n % i == 0 || n % (i + 2) == 0 { return false }
        i += 6
    }
    return true
}

func combinationSum(_ nums: [Int], _ k: Int, _ start: Int, _ currentSum: Int, _ count: inout Int) {
    if k == 0 {
        if isPrime(currentSum) {
            count += 1
        }
        return
    }
    
    for i in start..<nums.count {
        combinationSum(nums, k - 1, i + 1, currentSum + nums[i], &count)
    }
}

func solution(_ nums: [Int]) -> Int {
    var count = 0
    combinationSum(nums, 3, 0, 0, &count)
    return count
}