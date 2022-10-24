func solution(_ s:String) -> String {
    let oArr = Array(s)
    var eArr = Array(s); eArr.removeLast()
    func getMid(_ arr: [Character]) -> String {
        let mid = arr.count / 2
        let arr = arr.map { String($0) }
        return arr[mid]
    }
    return s.count % 2 == 1 ? getMid(oArr) : getMid(eArr) + getMid(oArr)
}