import Foundation

func solution(_ quiz:[String]) -> [String] {
    return quiz.map { 
        let arr = $0.components(separatedBy: " ")
        switch arr[1] {
            case "+": return Int(arr[0])! + Int(arr[2])! == Int(arr[4])! ? "O" : "X"
            default:  return Int(arr[0])! - Int(arr[2])! == Int(arr[4])! ? "O" : "X"   //← "-"인 경우
        }
    }
}