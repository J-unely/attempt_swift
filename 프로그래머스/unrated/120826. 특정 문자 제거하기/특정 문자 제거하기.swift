import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var st = my_string
    while st.contains(letter) {
        if let i = st.lastIndex { String($0) == letter } {
            st.remove(at: i)
        }
    }
    return st
}