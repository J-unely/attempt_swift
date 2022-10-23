func solution(_ n:Int64) -> Int64 {
    let answer = "\(n)".sorted(by: >).map { String($0) }.joined()
    return Int64(answer)!
}