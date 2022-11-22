func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    guard 1 < arr.count else { return [-1] }
    let smallest = arr.firstIndex(of: arr.min()!)!  //arr.sorted(by: <)[0]
    arr.remove(at: smallest); return arr
}