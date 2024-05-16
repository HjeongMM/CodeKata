import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var totalColas = 0
    var currentBottles = n
    
    while currentBottles >= a {
        let newColas = (currentBottles / a) * b
        let remainingBottles = currentBottles % a
        totalColas += newColas
        currentBottles = newColas + remainingBottles
    }
    
    return totalColas
}