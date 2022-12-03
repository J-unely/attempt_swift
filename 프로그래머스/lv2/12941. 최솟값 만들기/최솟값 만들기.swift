import Foundation

func solution(_ arrA: [Int], _ arrB: [Int]) -> Int {
    var (arrA, arrB) = (arrA.sorted(), arrB.sorted(by: >))
    return (0..<arrA.count).map { arrA[$0] * arrB[$0] }.reduce(0, +)
}