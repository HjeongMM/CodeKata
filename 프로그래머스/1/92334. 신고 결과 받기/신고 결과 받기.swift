import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportedCount: [String: Int] = [:]
    var userReports: [String: Set<String>] = [:]
    
    for id in id_list {
        reportedCount[id] = 0
        userReports[id] = Set<String>()
    }
    
    for r in report {
        let parts = r.split(separator: " ")
        let reporter = String(parts[0])
        let reported = String(parts[1])
        
        if userReports[reporter]!.contains(reported) == false {
            userReports[reporter]!.insert(reported)
            reportedCount[reported]! += 1
        }
    }
    
    var suspendedUsers: Set<String> = Set<String>()
    for (user, count) in reportedCount {
        if count >= k {
            suspendedUsers.insert(user)
        }
    }
    
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    var idIndex: [String: Int] = [:]
    
    for (index, id) in id_list.enumerated() {
        idIndex[id] = index
    }
    
    for (reporter, reports) in userReports {
        for user in reports {
            if suspendedUsers.contains(user) {
                result[idIndex[reporter]!] += 1
            }
        }
    }
    
    return result
}