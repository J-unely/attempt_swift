import Foundation

func solution(_ n: Int) -> Int {
    let intArray = String(n).map { Int(String($0))! }
    let answer = intArray.reduce(0) { $0 + $1 }
    return answer
}