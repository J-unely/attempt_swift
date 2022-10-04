import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var subNumbers = [Int]()
    if let sub: ArraySlice<Int> = numbers[num1...num2] { 
        subNumbers = Array(sub)
    } 
    return subNumbers
}