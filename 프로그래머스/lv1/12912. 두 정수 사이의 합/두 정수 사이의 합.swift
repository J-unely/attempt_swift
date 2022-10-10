func solution(_ a:Int, _ b:Int) -> Int64 {
    var answer = 0
    var (smaller, bigger) = (0, 0)
    guard a != b else { return Int64(a) }
    if a < b {
        (smaller, bigger) = (a, b)
    } else {
        (smaller, bigger) = (b, a)
    }
    for i in smaller...bigger {
        answer += i
    }
    return Int64(answer)
}