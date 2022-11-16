import Foundation

func solution(_ quiz:[String]) -> [String] {

    func check(_ exp: String) -> String {
        let strArr = exp.components(separatedBy: " ")
        var intArr = [Int]()
        var isPlus = true
        strArr.map { 
            if let num = Int($0) {
                intArr += [num]
            } else {
                switch $0 {
                    case "+": isPlus = true
                    case "-": isPlus = false
                    default: break  //← "="인 경우
                }
            }
        }
        switch isPlus {
            case true: guard intArr[0] + intArr[1] == intArr[2] else { return "X" }; return "O"
            case false:guard intArr[0] - intArr[1] == intArr[2] else { return "X" }; return "O"
        }
    }

    return quiz.map { check($0) }

}
