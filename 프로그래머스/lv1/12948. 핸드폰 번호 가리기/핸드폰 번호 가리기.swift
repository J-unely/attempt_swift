func solution(_ phone_number: String) -> String {
    let show = phone_number.suffix(4)
    let hide = [String](repeating: "*", count: phone_number.count - 4).joined()
    return hide + show
} 