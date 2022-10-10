func solution(_ a:Int, _ b:Int) -> Int64 {
    var answer = 0
    var (smaller, bigger) = a < b ? (a, b) : (b, a)
    guard a != b else { return Int64(a) }
    for i in smaller...bigger {
        answer += i
    }
    return Int64(answer)
}