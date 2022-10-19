import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted{ $0[0] < $1[0] }
    let hight = dots[0][1] - dots[1][1]
    let width = dots[2][0] - dots[1][0]
    return Int((width * hight).magnitude)
}