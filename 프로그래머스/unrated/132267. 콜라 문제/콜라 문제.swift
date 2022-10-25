import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var stock = n
    var paybackBottles = 0
    while stock >= a {
        let payback = stock / a * b
        paybackBottles += payback
        stock = stock % a + payback
    }
    return paybackBottles
}