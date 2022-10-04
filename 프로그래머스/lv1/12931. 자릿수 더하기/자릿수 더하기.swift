import Foundation

func solution(_ n: Int) -> Int {
    var answer: Int = 0
    let index: Int = String(n).count
    var tempInt = n
    for _ in 1...index {
        answer += tempInt % 10
        tempInt /= 10
    }
    return answer
}