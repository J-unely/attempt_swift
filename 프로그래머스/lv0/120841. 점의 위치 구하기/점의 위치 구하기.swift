import Foundation

func solution(_ dot: [Int]) -> Int {
    switch dot[0] {
        case ..<0: return dot[1] < 0 ? 3 : 2
        default: return dot[1] < 0 ? 4 : 1 
    }
}