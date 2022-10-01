import Foundation

func solution(_ n:Int) -> [Int] {
    var array = [Int]()
    array.append(contentsOf: 1...n)
    return array.filter { $0 % 2 == 1 }
}