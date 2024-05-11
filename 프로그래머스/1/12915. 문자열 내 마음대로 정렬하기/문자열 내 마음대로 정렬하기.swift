func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted {
        let index = strings[0].index(strings[0].startIndex, offsetBy: n)
        if $0[index] == $1[index] {
            return $0 < $1
        }
        return $0[index] < $1[index]
    }
}