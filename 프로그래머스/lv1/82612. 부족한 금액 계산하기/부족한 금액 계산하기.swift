import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var price = (1...count).reduce(0) { $0 + $1 * price }
    return price > money ? Int64(price - money) : Int64(0)
}