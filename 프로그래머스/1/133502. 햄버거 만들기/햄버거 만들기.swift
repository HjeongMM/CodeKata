import Foundation

func solution(_ ingredient: [Int]) -> Int {
    var stack: [Int] = []
    var count = 0
    
    for ing in ingredient {
        stack.append(ing)
        
        if stack.count >= 4 {
            if stack[stack.count - 4] == 1 &&
               stack[stack.count - 3] == 2 &&
               stack[stack.count - 2] == 3 &&
               stack[stack.count - 1] == 1 {
                count += 1
                stack.removeLast(4)
            }
        }
    }
    
    return count
}
