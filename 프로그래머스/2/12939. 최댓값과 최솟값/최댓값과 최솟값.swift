func solution(_ s: String) -> String {
    let 임시 = s.split(separator: " ").compactMap{ Int($0) }.sorted()
    
    if let minValue = 임시.first, let maxValue = 임시.last {
        return "\(minValue) \(maxValue)"
    } else {
        return ""
    }
    
}