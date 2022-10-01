import Foundation

func solution(_ array:[Int]) -> Int {
    let middle = array.count / 2
    return array.sorted()[middle]
}