import Foundation

func solution(_ hp:Int) -> Int {
    let tempInt = hp % 5
    return hp / 5 + tempInt / 3 + tempInt % 3
}