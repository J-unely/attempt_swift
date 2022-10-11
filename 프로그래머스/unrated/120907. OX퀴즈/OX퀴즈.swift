import Foundation

func solution(_ quiz:[String]) -> [String] {
    
    func check(_ exp: String) -> String {
        var arr = exp.components(separatedBy: " ")
        switch arr[1] {
            case "+": return Int(arr[0])! + Int(arr[2])! == Int(arr[4])! ? "O" : "X"
            default:  return Int(arr[0])! - Int(arr[2])! == Int(arr[4])! ? "O" : "X"   //← "-"인 경우
        }
    }
    
    return quiz.map { check($0) }
    
}