import Foundation

func solution(_ n:Int) -> Int {
    return (2..<(n + 1)).filter { $0 % 2 == 0 }.reduce(0) { $0 + $1 }
}