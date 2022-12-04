import Foundation

func solution(_ n: Int) -> Int {
    var count = 0
    for m in 1...n where m <= n / m {
        guard n % m == 0 else { continue }
        count += m == n / m ? 1 : 2
    }
    return count
}