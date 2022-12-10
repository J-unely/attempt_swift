import Foundation

func solution(_ s: String) -> [Int] {
    var s = s
    var ans = [0, 0]
    var count = 0
    repeat {
        count = s.count
        s = s.replacingOccurrences(of: "0", with: "")
        ans[0] += 1
        ans[1] += count - s.count
        count = s.count
        s = String(count, radix: 2)
    } while s != "1"
    return ans
}