import Foundation

func solution(_ t: String, _ p: String) -> Int {
    var count = 0
    let (numbT, numbP) = (t.map(String.init), Int(p)!)
    for i in 0 ... numbT.count - p.count {
        let n = Array(numbT[i ..< i + p.count]).joined()
        guard Int(n)! <= numbP else { continue }
        count += 1
    }
    return count
}