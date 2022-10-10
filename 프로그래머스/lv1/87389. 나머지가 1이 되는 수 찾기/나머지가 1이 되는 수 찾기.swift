import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    for m in 1...n {
        if n % m == 1 {
            answer = m
            break
        }
    }
    return answer
}