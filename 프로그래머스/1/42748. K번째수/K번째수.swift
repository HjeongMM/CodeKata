import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()

    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]

        let subArray = Array(array[(i-1)...(j-1)]).sorted()
        result.append(subArray[k-1])
    }

    return result
}