import Foundation

func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    func dateFromString(_ date: String) -> (year: Int, month: Int, day: Int) {
        let components = date.split(separator: ".").map { Int($0)! }
        return (components[0], components[1], components[2])
    }
    
    func isExpired(collectDate: String, duration: Int, today: (year: Int, month: Int, day: Int)) -> Bool {
        let (collectYear, collectMonth, collectDay) = dateFromString(collectDate)
        
        var expireYear = collectYear
        var expireMonth = collectMonth + duration
        var expireDay = collectDay - 1
        
        if expireDay == 0 {
            expireMonth -= 1
            expireDay = 28
        }
        
        if expireMonth > 12 {
            expireYear += expireMonth / 12
            expireMonth = expireMonth % 12
        }
        
        if expireMonth == 0 {
            expireYear -= 1
            expireMonth = 12
        }
        
        if expireYear < today.year {
            return true
        } else if expireYear == today.year {
            if expireMonth < today.month {
                return true
            } else if expireMonth == today.month {
                if expireDay < today.day {
                    return true
                }
            }
        }
        
        return false
    }
    
    var policyDict = [String: Int]()
    for term in terms {
        let components = term.split(separator: " ")
        let type = String(components[0])
        let duration = Int(components[1])!
        policyDict[type] = duration
    }
    
    let todayDate = dateFromString(today)
    
    var expiredInfo = [Int]()
    
    for (index, data) in privacies.enumerated() {
        let components = data.split(separator: " ")
        let collectDate = String(components[0])
        let type = String(components[1])
        
        if let duration = policyDict[type], isExpired(collectDate: collectDate, duration: duration, today: todayDate) {
            expiredInfo.append(index + 1)
        }
    }
    
    return expiredInfo
}