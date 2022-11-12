import Foundation

func solution(_ n: Int) -> Int {
    var num = n
    var arr = [Int]()
    repeat { arr += [num % 3]; num /= 3 } while num > 0
    return Int(arr.map { String($0) }.joined(), radix: 3)!
}