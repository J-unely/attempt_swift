import Foundation

func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
    func getGcd(_ biggerInt: Int, _ smallerInt: Int) -> Int {
        let mod: Int = biggerInt % smallerInt
        return 0 == mod ? min(biggerInt, smallerInt) : getGcd(smallerInt, mod)
    }
    var (denum, num) = (denum1 * num2 + denum2 * num1, num1 * num2)
    if denum == num {
        return [1, 1]
    } else if denum < num {
        let gcd = getGcd(num, denum)
        return [denum / gcd, num / gcd]
    } else {
        let gcd = getGcd(denum, num)
        return [denum / gcd, num / gcd]
    }
}