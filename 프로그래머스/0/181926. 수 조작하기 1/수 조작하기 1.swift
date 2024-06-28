
func solution(_ n: Int, _ control: String) -> Int {
    let controlArray = Array(control)
    var result = n
    
    for i in controlArray {
        if i == "w" {
            result += 1
        } else if i == "s" {
            result -= 1
        } else if i == "d" {
            result += 10
        } else if i == "a" {
            result -= 10
        }
    }
    return result
}