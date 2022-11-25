import Foundation

func solution(_ n: Int) -> Int {
    var (n, c) = (n, 0)
    while n > 0 {
        c += n % 2
        n /= 2
    }
    return c
}