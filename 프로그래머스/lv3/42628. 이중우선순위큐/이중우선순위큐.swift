import Foundation

func solution(_ operations: [String]) -> [Int] {
    var stored = [Int]()
    operations.forEach {
        let temp = $0.components(separatedBy: " ")
        if temp[0] == "I" {
            stored.append(Int(temp[1])!)
            stored.sort()
        } else {
            guard !stored.isEmpty else { return }
            if temp[1] == "-1" { stored.removeFirst() } else { stored.removeLast() }
        }
    }
    return stored.isEmpty ? [0, 0] : [stored.max()!, stored.min()!]
}