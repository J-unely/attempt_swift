func solution(_ n: Int64) -> [Int] {
    var n = Int(n)
    var array = [Int]()
    for _ in 1...String(n).count {
        array.append(n % 10)
        n /= 10
    }
    return array
}