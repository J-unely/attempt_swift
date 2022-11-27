import Foundation

func solution(_ A: String, _ B: String) -> Int {
    let combo = A + A
    guard combo.contains(B) else { return -1 }
    return combo.components(separatedBy: B)[1].count
}