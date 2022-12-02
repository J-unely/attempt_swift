func solution(_ x: Int, _ n: Int) -> [Int64] {
    var arr = [Int](repeating: x, count: n)
    (1..<n).forEach { arr[$0] += x * $0 }
    return arr.map { Int64($0) }
}