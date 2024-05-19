import Foundation

func solution(_ a: Int, _ b: Int) -> String {
    var dateComponents = DateComponents()
    dateComponents.year = 2016
    dateComponents.month = a
    dateComponents.day = b

    let calendar = Calendar.current
    if let date = calendar.date(from: dateComponents) {
        let weekday = calendar.component(.weekday, from: date)
        let weekdays = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
        return weekdays[weekday - 1]
    } else {
        return ""
    }
}