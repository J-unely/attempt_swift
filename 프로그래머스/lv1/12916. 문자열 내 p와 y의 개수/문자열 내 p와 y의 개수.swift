import Foundation

func solution(_ s: String) -> Bool {
    let array = s.lowercased().sorted()
    let countP = array.filter { $0 == "p" }.count ?? 0
    let countY = array.filter { $0 == "y" }.count ?? 0
    return countP == countY ? true : false
}