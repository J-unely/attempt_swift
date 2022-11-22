func solution(_ s: String) -> String {
    return s.components(separatedBy: " ").map { $0.prefix(1).uppercased() + $0.dropFirst().lowercased() }.joined(separator: " ")
}