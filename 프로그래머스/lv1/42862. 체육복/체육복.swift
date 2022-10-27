import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var noCloth = lost.filter { !reserve.contains($0) }.sorted()
    var sharers = reserve.filter { !lost.contains($0) }.sorted()
    sharers.forEach {
        if let share = noCloth.firstIndex(of: $0 - 1) { noCloth.remove(at: share) }
        else if let share = noCloth.firstIndex(of: $0 + 1) { noCloth.remove(at: share) }
    }
    return n - noCloth.count
}