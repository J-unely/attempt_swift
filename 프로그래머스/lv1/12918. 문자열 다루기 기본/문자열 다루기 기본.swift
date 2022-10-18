func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false }
    guard let beInt = Int(s) else { return false }
    return true
}