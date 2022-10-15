import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var arr = absolutes
    for (index, value) in absolutes.enumerated() {
        if !signs[index] {
            arr[index] = -value
        }
    }
    return arr.reduce(0) { $0 + $1 }
}