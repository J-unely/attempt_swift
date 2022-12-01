import Foundation

func solution(_ cipher: String, _ code: Int) -> String {
    return cipher.enumerated().filter { ($0.0 + 1) % code == 0 }.map { "\($0.1)" }.joined()
}