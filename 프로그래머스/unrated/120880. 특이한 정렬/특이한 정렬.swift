import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    func distance(_ num: Int) -> Int {
        return n < num ? num - n : n - num
    }
    func compare(_ num1: Int, _ num2: Int) -> Bool {
        guard distance(num1) != distance(num2) else { return num1 > num2 }
        return distance(num1) < distance(num2)
    }
    return numlist.sorted(by: compare)
}